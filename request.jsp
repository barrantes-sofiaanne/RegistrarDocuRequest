<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document Price Lookup</title>
    <!-- Link to external CSS -->
    <link rel="stylesheet" href="request.css" />
  </head>
  <body>
    <div class="container">
      <h1>Document Price Lookup</h1>

      <button type="button" onclick="addRow()">Add</button>

      <table id="documentTable">
        <thead>
          <tr>
            <th>Document</th>
            <th>Price</th>
            <th>Receipt</th>
            <th>Status</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody id="tableBody">
          <tr>
            <td>
              <select id="documentDropdown1" onchange="updatePrice(1)">
                <option value="">-- Select Document --</option>
              </select>
            </td>
            <td><span id="price1">0.00</span></td>
            <td><input type="file" accept="image/*" /></td>
            <td><span id="status1">Pending</span></td>
            <td>
              <button type="button" onclick="deleteRow(this)">Remove</button>
            </td>
          </tr>
        </tbody>
      </table>

      <button type="submit" class="submit-btn">Submit</button>
    </div>

    <!-- JavaScript to handle table interactions -->
    <script src="requestTable.js"></script>
  </body>
</html>
