

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footwear Shop - Update Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/addproduct.css">
    <script>
        function showMessage() {
            alert("Product updated successfully!");
        }
    </script>

    <style>
        body {
            background-size: cover;
            background-color: #d7d4f8;
        }
        .form {
            display: block;
            margin: 50px auto;
            height: 640px;
            width: 400px;
            box-shadow: 0 0 5px 0px #6a4af7;
            padding: 10px 20px;
            border-radius: 10px;
            text-align: center;
            background-color: #d7d4f8;
        }
        .input {
            width: 300px;
            height: 35px;
            border: solid 1px #c0bebe;
            border-radius: 10px;
        }
        .btn {
            display: block;
            margin: 20px auto;
            box-shadow: 0 0 5px 0px blue;
            padding: 10px 20px;
            border-radius: 10px;
            text-align: center;
            background-color: #6a4af7;
            color: #fff;
            width: 200px;
        }
    </style>
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

        <!-- Product Update Form -->
        <form class="form" action="productupdate.jsp?pid=" method="post" enctype="multipart/form-data">
            <!-- Hidden input to pass the product ID -->
            <input type="hidden" name="pid" value="" />

            <h2>Product Name:</h2>
            <input type="text" name="pname" class="input" value="" required />

            <h2>Price:</h2>
            <input type="number" name="price" class="input" value="" step="0.01" required />

            <h2>Choose Category:</h2>
            <select name="category" class="input" required>
                <option >Womens</option>
                <option >Mens</option>
                <option >Sports shoe</option>
                <option >Kids</option>
            </select>

            <h2>Quantity:</h2>
            <input type="number" name="qty" class="input" value="" required />

            <h2>Description:</h2>
            <textarea name="desc" class="input" rows="4" required></textarea>

            <h2>Product Image:</h2>
            <input type="file" name="img" class="input" accept=".jpg,.jpeg,.png" />
            <input type="hidden" name="existingImg" value="" />

            <button class="btn btn-primary" type="submit"onclick="showMessage()">Update Product</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
