<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Footwearshop</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/addproduct.css">
</head>
<body>
    <div class="background fs-4 shadow">
        <nav class="navbar navbar-expand-lg nav">
          <div class="container-fluid">
            <a class="navbar-brand" href="#"><img src="../../user/imges/logo.png" class="logo-img">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
              aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
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
      <form class="addproduct1">
        <h2 class="text">User Name:</h2>
        <input type="text"name="productname"class="input"value="Tejaswi">
        <h2  class="text">Moblie No</h2>
        <input type="text"name="price"class="input"value="0987675432">
        <h2 class="text">Email Id:</h2>
        <input type="text"name="price"class="input"value="t@gmail.com">
        <h2 class="text">Password:</h2>
        <input type="text"name="price"class="input"value="1234">
        <h2  class="text">Address:</h2>
        <input type="number"name="qauntity"class="input"value="Nagar">
            <h2  class="text">Pincode:</h2>
    
        <input type="text"name="productdesc"class="input"value="414601">
        <a href="user.jsp" class="nav-link">
          <botton class="btn">Submit</botton><a>    
       </form>
</body>
</html>
