// Modal
var modal = document.getElementById("myModal");
var cartbtn = document.getElementById("cart");
var close = document.getElementsByClassName("close")[0];
var close_footer = document.getElementsByClassName("close-footer")[0];
var order = document.getElementsByClassName("order")[0];
cartbtn.onclick = function() {
    modal.style.display = "block";
};
close.onclick = function() {
    modal.style.display = "none";
};
close_footer.onclick = function() {
    modal.style.display = "none";
};
order.onclick = function() {
    alert("Payment successful - Thank you ");
};
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
};

// Delete cart item
var remove_cart = document.getElementsByClassName("btn-danger");
for (var i = 0; i < remove_cart.length; i++) {
    var button = remove_cart[i];
    button.addEventListener("click", function() {
        var button_remove = event.target;
        button_remove.parentElement.parentElement.remove();
    });
}

// update cart
function updatecart() {
    var cart_item = document.getElementsByClassName("cart-items")[0];
    var cart_rows = cart_item.getElementsByClassName("cart-row");
    var total = 0;
    for (var i = 0; i < cart_rows.length; i++) {
        var cart_row = cart_rows[i];
        var price_item = cart_row.getElementsByClassName("cart-price ")[0];
        var quantity_item = cart_row.getElementsByClassName(
            "cart-quantity-input"
        )[0];
        var price = parseFloat(price_item.innerText); //Change string to number to get total.
        var quantity = quantity_item.value; // Get value in <input>
        total = total + price * quantity;
    }
    document.getElementsByClassName("cart-total-price")[0].innerText =
        "$" + total;
    //Change text = total in class cart-total-price. There's only one .cart-total-price so I use [0]
}

// Change quantity of item
var quantity_input = document.getElementsByClassName("cart-quantity-input");
for (var i = 0; i < quantity_input.length; i++) {
    var input = quantity_input[i];
    input.addEventListener("change", function(event) {
        var input = event.target;
        if (isNaN(input.value) || input.value <= 0) {
            input.value = 1;
        }
        updatecart();
    });
}

// Add to cart
var add_cart = document.getElementsByClassName("btn-cart");
for (var i = 0; i < add_cart.length; i++) {
    var add = add_cart[i];
    add.addEventListener("click", function(event) {
        var button = event.target;
        var product = button.parentElement.parentElement;
        var img = product.parentElement.getElementsByClassName("img-prd")[0].src;
        var title = product.getElementsByClassName("content-product-h3")[0]
            .innerText;
        var price = product.getElementsByClassName("price")[0].innerText;
        addItemToCart(title, price, img);
        // Show modal when user click "Add to cart" button
        modal.style.display = "block";
        updatecart();
    });
}

function addItemToCart(title, price, img) {
    var cartRow = document.createElement("div");
    cartRow.classList.add("cart-row");
    var cartItems = document.getElementsByClassName("cart-items")[0];
    var cart_title = cartItems.getElementsByClassName("cart-item-title");
    for (var i = 0; i < cart_title.length; i++) {
        if (cart_title[i].innerText == title) {
            alert("This product has already been in your cart");
            return;
        }
    }

    var cartRowContents = `
  <div class="cart-item cart-column">
      <img class="cart-item-image" src="${img}" width="100" height="100">
      <span class="cart-item-title">${title}</span>
  </div>
  <span class="cart-price cart-column">${price}</span>
  <div class="cart-quantity cart-column">
      <input class="cart-quantity-input" type="number" value="1">
      <button class="btn btn-danger" type="button">Remove</button>
  </div>`;
    cartRow.innerHTML = cartRowContents;
    cartItems.append(cartRow);
    cartRow
        .getElementsByClassName("btn-danger")[0]
        .addEventListener("click", function() {
            var button_remove = event.target;
            button_remove.parentElement.parentElement.remove();
            updatecart();
        });
    cartRow
        .getElementsByClassName("cart-quantity-input")[0]
        .addEventListener("change", function(event) {
            var input = event.target;
            if (isNaN(input.value) || input.value <= 0) {
                input.value = 1;
            }
            updatecart();
        });
}

/*First slider */
$(".slider-one").slick({
    autoplay: true,
    autoplaySpeed: 3000,
    dots: true,
    prevArrow: ".site-slider .slider-btn .prev",
    nextArrow: ".site-slider .slider-btn .next",
});

/*Second slider */
$(".slider-two").slick({
    prevArrow: ".site-slider-two .prev",
    nextArrow: ".site-slider-two .next",
    slidesToShow: 5,
    slidesToScroll: 3,
    autoplay: true,
    autoplaySpeed: 3000,
    responsive: [{
            breakpoint: 480,
            settings: {
                slidesToShow: 2,
            },
        },
        {
            breakpoint: 769,
            settings: {
                slidesToShow: 3,
            },
        },
        {
            breakpoint: 1025,
            settings: {
                slidesToShow: 4,
            },
        },
    ],
});

/*Third slider*/
$(".slider-three").slick({
    prevArrow: ".site-slider-three .prev",
    nextArrow: ".site-slider-three .next",
    slidesToShow: 5,
    slidesToScroll: 3,
    autoplay: true,
    autoplaySpeed: 3000,
    responsive: [{
            breakpoint: 480,
            settings: {
                slidesToShow: 2,
            },
        },
        {
            breakpoint: 769,
            settings: {
                slidesToShow: 3,
            },
        },
        {
            breakpoint: 1025,
            settings: {
                slidesToShow: 4,
            },
        },
    ],
});

//log in
(function ($) {
    "use strict";


    /*==================================================================
    [ Focus input ]*/
    $('.input100').each(function(){
        $(this).on('blur', function(){
            if($(this).val().trim() != "") {
                $(this).addClass('has-val');               
            } else {
                $(this).removeClass('has-val');
            }
        })    
    })
  
  
    /*==================================================================
    [ Validate ]*/
    var input = $('.validate-input .input100');

    $('.validate-form').on('submit',function(){
        var check = true;

        for(var i=0; i<input.length; i++) {
            if(validate(input[i]) == false){
                showValidate(input[i]);
                check=false;
            }
        }

        return check;
    });


    $('.validate-form .input100').each(function(){
        $(this).focus(function(){
           hideValidate(this);
        });
    });

    function validate (input) {
        if($(input).attr('type') == 'email' || $(input).attr('name') == 'email') {
            if($(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
                return false;
            }
        }
        else {
            if($(input).val().trim() == ''){
                return false;
            }
        }
    }

    function showValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).addClass('alert-validate');
    }

    function hideValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).removeClass('alert-validate');
    }
    
    /*==================================================================
    [ Show pass ]*/
    var showPass = 0;
    $('.btn-show-pass').on('click', function(){
        if(showPass == 0) {
            $(this).next('input').attr('type','text');
            $(this).find('i').removeClass('zmdi-eye');
            $(this).find('i').addClass('zmdi-eye-off');
            showPass = 1;
        }
        else {
            $(this).next('input').attr('type','password');
            $(this).find('i').addClass('zmdi-eye');
            $(this).find('i').removeClass('zmdi-eye-off');
            showPass = 0;
        }
        
    });


})(jQuery);