<!DOCTYPE html>
<html lang="en">
<head>
  <title>FootWear Shop</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 550px}
    body{
        background: url('https://cdn.prod.website-files.com/5ee0a01c741b15ab8ec28a14/65e1f0b0f215b0861c97d003_%3Fid%3D967-main.webp');
        background-repeat: no-repeat;
        background-position: center;
        background-size:cover; 
    }
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 650px;
    }
    .nav-pills {
        background-color: #f1f1f1;
        border-radius: 0;
        margin: 0;
        padding: 0;
        list-style: none;
        width: 250px;
        margin-top: 30px;

    }
        
    /* On small screens, set height to 'auto' for the grid */
    @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }
    .well{
        border:none;
        box-shadow: 0px 0px 5px #fff;
    }
    .h4{
        color:blue;
        font-weight: 600;
    }
    .manage{
        margin-top: 20px;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0px 0px 5px #fff;
        margin-bottom: 20px;
        box-shadow: 0 0 5px #bab7e0;
        border: #8385e7 solid 1px;

    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse visible-xs">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Dashboard</a></li>
        <li><a href="#">Age</a></li>
        <li><a href="#">Gender</a></li>
        <li><a href="#">Geo</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav hidden-xs">
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="home.jsp">Dashboard</a></li>
        <li><a href="product.jsp">Product</a></li>
        <li><a href="order.jsp">Order</a></li>
        <li><a href="user.jsp">USer</a></li>
        <li><a href="report.jsp">Reports</a></li>

      </ul><br>
    </div>
    <br>
    
    <div class="col-sm-9">
      <div class="well">
        <h4 class="h4" >Dashboard</h4>
        <p>Welcome..</p>
      </div>
      <div class="row ">
        <div class="col-sm-3 ">
          <a href="user.jsp">
          <div class="well manage">
            <h4 class="h4">Users</h4>
          </div>
        </div>
      </a>
        <div class="col-sm-3">
          <a href="product.jsp">
          <div class="well manage">
            <h4 class="h4">Product</h4>
          </div>
          </a>
        </div>
        <div class="col-sm-3">
          <a href="order.jsp">
          <div class="well manage">
            <h4 class="h4">Order</h4>
          </div>
          </a>
        </div>
        <div class="col-sm-3">
          <a href="report.jsp">
          <div class="well manage">
            <h4 class="h4">Reports</h4>
          </div>
          </a>
        </div>
      </div>
    
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>
