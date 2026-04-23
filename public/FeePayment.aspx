<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TTU | Fee Payment</title>
    <link rel="stylesheet" href="../bower_components/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css" />
    <style>
        body { background-color: #ecf0f5; font-family: 'Source Sans Pro','Helvetica Neue',Helvetica,Arial,sans-serif; }
        .main-header { background-color: #3c8dbc; color: white; padding: 15px; display: flex; justify-content: space-between; align-items: center; }
        .breadcrumb-bar { background: #d2d6de; padding: 8px 15px; margin-bottom: 20px; font-size: 12px; }
        .checkout-card { background: white; border-top: 3px solid #dd4b39; padding: 20px; margin: 15px; border-radius: 3px; box-shadow: 0 1px 1px rgba(0,0,0,0.1); }
        .form-control[readonly] { background-color: #eee; opacity: 1; }
        .btn-pay { background-color: #5cb85c; color: white; border: none; padding: 10px 25px; border-radius: 2px; }
        .footer-text { text-align: center; padding: 20px; font-size: 12px; color: #444; }
    </style>
</head>
<body>
    <div class="main-header">
        <i class="fa fa-bars"></i>
        <span><b>TTU</b> Portal</span>
        <div><img src="../images/logo.png" style="height:25px;"> <i class="fa fa-gears"></i></div>
    </div>

    <div class="breadcrumb-bar">
        <i class="fa fa-dashboard"></i> Dashboard > Fee Payment
    </div>

    <div class="checkout-card">
        <h4 style="border-bottom: 1px solid #f4f4f4; padding-bottom: 10px; margin-bottom: 20px;">Pesa Flow Checkout</h4>
        
        <form action="/initiate-pay" method="POST">
            <div class="form-group">
                <label><b>Fee Balance</b></label>
                <input type="text" class="form-control" value="135,018.32" readonly>
            </div>

            <div class="form-group">
                <label><b>Amount To Pay (Plus 50 KSHs Convenience Fee)</b></label>
                <input type="number" name="amount" class="form-control" placeholder="">
            </div>

            <button type="submit" class="btn-pay">Pay</button>
        </form>
    </div>

    <div class="footer-text">
        <strong>Copyright &copy; 2026 <a href="#">Taita Taveta University</a>.</strong> Powered by. <a href="#">AppKings Solutions Limited</a>
    </div>
</body>
</html>
