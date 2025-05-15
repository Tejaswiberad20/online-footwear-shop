<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>FootwearShop</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/addproduct.css">

</head>
<body>


  <div class="background fs-4 shadow">
    <nav class="navbar navbar-expand-lg nav">
      <div class="container-fluid">
        <a class="navbar-brand" href="#"><img src="../../user/imges/logo.png" class="logo-img"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item"><a class="nav-link nav-content" href="product.jsp">Product</a></li>
            <li class="nav-item"><a class="nav-link" href="user.jsp">User</a></li>
            <li class="nav-item"><a class="nav-link" href="order.jsp">Order</a></li>
            <li class="nav-item"><a class="nav-link" href="report.jsp">Reports</a></li>
          </ul>
        </div>
      </div>
    </nav>
  </div>

  <h1 style="text-align:center;color:#6a4af7;margin-top:20px;">Add New Product</h1>

  <!-- Form for adding a new product -->
  <form class="addproduct1" action="insertproduct.jsp" method="post">
    <h2 class="text">Product Name:</h2>
    <input type="text" name="pname" class="input" >

    <h2 class="text">Price:</h2>
    <input type="text" name="price" class="input" >

    <h2 class="text">Choose Category:</h2>
    <select name="category" class="input" >
      <option name="category">Womens</option>
      <option name="category">Mens</option>
      <option name="category" >Sports Shoes</option>
      <option name="category">Kids</option>
    </select>

    <h2 class="text">Quantity:</h2>
    <input type="number" name="qty" class="input" >

    <h2 class="text">Product Image:</h2>
    <input type="file" name="img" class="input">

    <h2 class="text">Description:</h2>
    <input type="text" name="disc" class="input" >

    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</body>
</html>
