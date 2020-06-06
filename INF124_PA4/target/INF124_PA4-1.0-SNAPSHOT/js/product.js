(function () {   

function  initItems(){
  var product = localStorage.getItem('product');
  var productData = JSON.parse(product);    
  
  var left = document.getElementsByClassName('left'); 

  var image = document.createElement('img');
  //image.className = "thumbnail";
  image.src = "./picture/" + productData.imgHref;
  image.style = "width:300px;height:350px;";
  left[0].appendChild(image)

  //Import product image
  var right = document.getElementsByClassName('right');

  var productName = document.createElement('h2');
  productName.textContent = productData.name
  right[0].appendChild(productName);

  var productDescription = document.createElement('h4');
  productDescription.textContent = productData.description;
  right[0].appendChild(productDescription)

  var price = document.createElement('h5');
  price.textContent = "Price: $" + productData.price;
  right[0].appendChild(price); 

  var inputDiv = document.createElement('div');
  inputDiv.className ="inputDiv";
  right[0].appendChild(inputDiv);

  var inputDiv1 = document.getElementsByClassName("inputDiv");
  var quantityField = document.createElement('h5');
  quantityField.textContent = "Quantity: ";
  inputDiv1[0].appendChild(quantityField);

  var quantityInput = document.createElement('input');
  quantityInput.type = "number";
  quantityInput.id = "number";
  quantityInput.defaultValue = "1";
  inputDiv1[0].appendChild(quantityInput);
  
  var newLine = document.createElement("br");
  right[0].appendChild(newLine);  

  //Create button
  var button = document.createElement('button');
  button.type = "button";
  button.className = "button";
  button.value = productData;
  right[0].appendChild(button);  

  var anchor = document.getElementsByClassName('button');
  var link = document.createElement('a');
  link.href = "form.html";
  link.appendChild(document.createTextNode("Add to cart"));
  anchor[0].appendChild(link);

  //Send object to next page
  link.addEventListener('click', function() { 
    productData.quantity = document.getElementById('number').value;
    localStorage.setItem('productData', JSON.stringify(productData))
    }, false);
}

  document.onreadystatechange = () => {
    if (document.readyState === 'complete') {        
        initItems();        
    }
  };

  })();
  
