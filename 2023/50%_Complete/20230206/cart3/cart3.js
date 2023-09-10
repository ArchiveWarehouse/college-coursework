// document.getElementById("add_button").addEventListener("click", checkInput);
document.querySelectorAll(".remove").forEach(removebtn => removebtn.addEventListener("click", removeProduct));
document.querySelectorAll(".quantity").forEach(qty => qty.addEventListener("change", changeSubtotal));
total();

// Check if input is empty
function checkInput(){
	let nameProduct = document.getElementById("name_product");
	let priceProduct = document.getElementById("price_product");
	if (nameProduct.value != "" && priceProduct.value != "") {
		addProduct();
		total();
	}
}





// Add a product
function addProduct(){
	let nameProduct = document.getElementById("name_product");
	let priceProduct = document.getElementById("price_product");

	let tbody = document.getElementById("all_products");
	let tr = tbody.insertRow();
	let td1 = tr.insertCell(0);//product_name
	let td2 = tr.insertCell(1);//Unit price
	let td3 = tr.insertCell(2);//Quantity
	let td4 = tr.insertCell(3);//Subtotal
	let td5 = tr.insertCell(4);//Action(remove)

	td1.innerHTML = nameProduct.value;
	// td2.innerHTML = priceProduct.value;
	let a = priceProduct.value
	td2.innerHTML = "¥"+a.toLocaleString('jpn');
	td3.innerHTML = '<input type="number" class="quantity" value="1" min="0">';
	td4.innerHTML = priceProduct.value
	td5.innerHTML = '<button type="button" class="remove">Remove</i></button>';

	td3.addEventListener("change", changeSubtotal);
	td5.addEventListener("click", removeProduct);

	nameProduct.value = "";
	priceProduct.value = "";
}

// Change subtotal
function changeSubtotal(element) {
	let price = this.previousElementSibling.innerHTML;
	// let price_1 = price.replace("¥","");
	// let price_demo = "";
	// let a = price.split(",");
	
	// for (let index = 0; index < a.length; index++) {
	// 	price_demo += a[index];
	// }
	let price_1 = parseFloat(price);
	let quantity = element.target.value; 
	let subtotal = price_1*quantity;
	this.nextElementSibling.innerHTML = subtotal;
	total();
}

// Remove a product
function removeProduct() {
	this.parentElement.parentElement.removeChild(this.parentElement);
	total();
}

// Sum total
function total(){
	let totalDisplay = document.getElementById("total_display");
	let sum = 0;
	let tbody = document.getElementById("all_products");
	for (let i = 0; i < tbody.rows.length; i++) {
		// let price_demo = "";
		let a = tbody.rows[i].cells[3].innerHTML;
		
		// for (let index = 0; index < a.length; index++) {
		// 	price_demo += a[index];
		// }
		let b = parseFloat(a);
		sum = sum + b;
	}
	let total = sum.toLocaleString('jpn');
	totalDisplay.innerHTML = "¥"+total  ;
}
// let a = "500,000,000,000";
// let d = 758946543212356;
// let c = 2000;
// // let e = a+d;
// const btn = document.getElementById('btn');
// let b_1 = btn.value;
// // let c = b.toLocaleString('jpn');
// // e = e.toLocaleString('jpn');
// let f = "";
// const price_arry = b_1.split(",");
// for (let index = 0; index < price_arry.length; index++) {
//     // const element = array[index];
//     console.log("price_array["+(index+1)+"]"+price_arry[index]);
//     f += price_arry[index];
// }

// console.log(typeof f);
// console.log(f);
// let b = parseFloat(f);

// console.log(c+b);
