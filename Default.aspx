<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Pine Valley Furniture</title>
<link rel="stylesheet" href="StyleSheet.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
</head>
<body>
<header>
    <h1>Welcome to Pine Valley Furniture</h1>
</header>
<nav>
    <!-- Buttons to open modal dialogs -->
    <button type="button"  class="btn btn-primary" data-toggle="modal" data-target="#registrationModal">Register</button>
    <button type="button"  class="btn btn-primary" data-toggle="modal" data-target="#newProductModal">New Product</button>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#orderPlacementModal">Place Order</button>
</nav>
<div class="container">
  <form id="searchForm" runat="server">
        <input type="text" id="txtSearch" runat="server" placeholder="Search..."/>
        <button type="submit" id="btnSearch" runat="server" class="btn btn-info mb-1">Search</button>
  </form>
  
  <table id="customerTable" runat="server">
    <thead>
      <tr>
        <th>Customer ID</th>
        <th>Customer Name</th>
        <th>Address</th>
        <th>City</th>
        <th>State</th>
        <th>Postal Code</th>
      </tr>
    </thead>
    <tbody>
      <!-- Customer data will be populated here -->
    </tbody>
  </table>
</div>
<!-- Registration Modal -->
<div class="modal fade" id="registrationModal" tabindex="-1" role="dialog" aria-labelledby="registrationModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="registrationModalLabel">Registration Form</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="txtCustomerId">Customer ID:</label>
                    <input type="text" id="txtCustomerId" class="form-control" runat="server" />
                </div>
                <div class="form-group">
                    <label for="txtCustomerName">Customer Name:</label>
                    <input type="text" id="txtCustomerName" class="form-control" runat="server" />
                </div>
                <div class="form-group">
                    <label for="txtCustomerAddress">Address:</label>
                    <input type="text" id="txtCustomerAddress" class="form-control" runat="server" />
                </div>
                <div class="form-group">
                    <label for="txtCustomerCity">City:</label>
                    <input type="text" id="txtCustomerCity" class="form-control" runat="server" />
                </div>
                <div class="form-group">
                    <label for="txtCustomerState">State:</label>
                    <input type="text" id="txtCustomerState" class="form-control" runat="server" />
                </div>
                <div class="form-group">
                    <label for="txtPostalCode">Postal Code:</label>
                    <input type="text" id="txtPostalCode" class="form-control" runat="server" />
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" id="btnRegister" runat="server" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
    <!-- Product Modal -->
<div class="modal fade" id="newProductModal" tabindex="-1" role="dialog" aria-labelledby="productModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="productModalLabel">Product Information</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="productForm">
          <div class="form-group">
            <label for="productId">Product ID:</label>
            <input type="text" class="form-control" id="productId" placeholder="Enter Product ID" />
          </div>
          <div class="form-group">
            <label for="productLineId">Product Line ID:</label>
            <input type="text" class="form-control" id="productLineId" placeholder="Enter Product Line ID" />
          </div>
          <div class="form-group">
            <label for="productDescription">Product Description:</label>
            <input type="text" class="form-control" id="productDescription" placeholder="Enter Product Description" />
          </div>
          <div class="form-group">
            <label for="productFinish">Product Finish:</label>
            <input type="text" class="form-control" id="productFinish" placeholder="Enter Product Finish" />
          </div>
          <div class="form-group">
            <label for="standardPrice">Standard Price:</label>
            <input type="text" class="form-control" id="standardPrice" placeholder="Enter Standard Price" />
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" id="btnNewProduct" runat="server" class="btn btn-primary">Save</button>
      </div>
    </div>
  </div>
</div>
<!-- Order Product Modal -->
<div class="modal fade" id="orderPlacementModal" tabindex="-1" role="dialog" aria-labelledby="orderProductModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="orderProductModalLabel">Order Product</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="orderProductForm">
          <div class="form-group">
            <label for="orderId">Order ID:</label>
            <input type="text" class="form-control" id="orderId" placeholder="Enter Order ID" />
          </div>
          <div class="form-group">
            <label for="productId">Product ID:</label>
            <input type="text" class="form-control" id="productOrderId" placeholder="Enter Product ID" />
          </div>
          <div class="form-group">
            <label for="quantity">Quantity:</label>
            <input type="text" class="form-control" id="quantity" placeholder="Enter Quantity" />
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" id="btnPlaceOrder" runat="server"  class="btn btn-primary" >Submit</button>
      </div>
    </div>
  </div>
</div>

 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
