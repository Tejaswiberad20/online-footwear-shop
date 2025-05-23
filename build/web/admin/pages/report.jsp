<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CosmeticProduct</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/repport.css">
</head>

<body>
    <div class="background fs-4 shadow">
        <nav class="navbar navbar-expand-lg nav">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><img src="../../user/imges/logo.png" class="logo-img">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link nav-content" aria-current="page" href="product.jsp">Product</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="user.jsp">User</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="order.jsp">Order</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="report.jsp">Reports</a>
                        </li>
                    </ul>
                    <div class="btn-group dropstart bg-light">
                    </div>
                </div>
            </div>
        </nav>
    </div>
    <div class="report">
        <div class="report-body">
            <img src="../imges/userrpt.png" class="img">
            <a href="userrpt.jsp" style="text-decoration: none;">
                <h3 class="text">User Report</h3>
            </a>
        </div>
        <div class="report-body">
            <img src="../imges/survey.png" class="img">
            <a href="orderrpt.jsp" style="text-decoration: none;">
                <h3 class="text">Order Report</h3>
            </a>

        </div>
        <div class="report-body">
            <img src="../imges/clipboard.png" class="img">
            <a href="contactrpt.jsp" style="text-decoration: none;">
                <h3 class="text">Contact Report</h3>
            </a>

        </div>
        <div class="report-body">
            <img src="../imges/feedback.png" class="img">
            <a href="feedbackrpt.jsp" style="text-decoration: none;">
                <h3 class="text">FeedBack Report</h3>
            </a>

        </div>
        <div class="report-body">
            <img src="../imges/add-product.png" class="img">
            <a href="productrpt.jsp" style="text-decoration: none; ">
                <h3 class="text">Product Report</h3>
            </a>

        </div>
         <div class="report-body">
            <img src="../imges/add-product.png" class="img">
            <a href="paymentrpt.jsp" style="text-decoration: none; ">
                <h3 class="text">Payment Report</h3>
            </a>

        </div>

    </div>
</body>

</html>