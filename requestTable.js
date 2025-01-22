function updatePrice(rowId) {
            const dropdown = document.getElementById("documentDropdown" + rowId);
            const selectedOption = dropdown.options[dropdown.selectedIndex];
            const price = selectedOption.getAttribute("data-price");
            document.getElementById("price" + rowId).innerText = price ? price : "Select a document";
        }

        // Function to add a new row dynamically
        function addRow() {
            const tableBody = document.getElementById("tableBody");
            const rowCount = tableBody.rows.length + 1; // Get the new row index
            const newRow = tableBody.insertRow();

            const cell1 = newRow.insertCell(0);
            const cell2 = newRow.insertCell(1);
            const cell3 = newRow.insertCell(2);
			const cell4 = newRow.insertCell(3);
			const cell5 = newRow.insertCell(4);

            // Populate the first cell with the dropdown
            cell1.innerHTML = `
                <select id="documentDropdown${rowCount}" onchange="updatePrice(${rowCount})">
                    <option value="">-- Select Document --</option>
                    
                </select>
            `;

            // Populate the second cell with the price span
            cell2.innerHTML = `<span id="price${rowCount}">0.00</span>`;
			
			cell3.innerHTML = `<input type="file" accept="image/*">`; // File input for image upload
			
			cell4.innerHTML = `<span id="status">Status placeholder</span>`            
            // Add a delete button to the third cell
            cell5.innerHTML = `<button type="button" onclick="deleteRow(this)">Remove</button>`;
	
        }

        // Function to delete a specific row
        function deleteRow(button) {
            const row = button.parentNode.parentNode; // Get the row containing the button
            row.parentNode.removeChild(row); // Remove the row from the table
        }