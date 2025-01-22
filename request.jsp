<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Document Price Lookup</h1>

    <button type="button" onclick="addRow()">Add</button>
	<br>
	<br>
    <table id="documentTable" border="1" cellspacing="0" cellpadding="10">
        <thead>
            <tr>
                <th>Document</th>
                <th>Price</th>
                <th>Receipt</th>
                <th>Status</th>
                <th></th>
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
                <td><input type="file" accept="image/*"></td>
                <td><span id="status">Pending</span></td>
                <td><button type="button" onclick="deleteRow(this)">Remove</button></td>
            </tr>
        </tbody>
    </table>
    <br>
    <br>
    <button type="submit" onclick="">Submit</button>
    
    
    
    
    <script src="requestTable.js"></script>
</body>
</html>