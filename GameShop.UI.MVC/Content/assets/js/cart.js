//JavaScript Object using JSON (JavaScript Object Notation)
//to store informatin for each book
//JSON is a light-weight data interchange format used to pass information from one file or server to another
var games = [
    {
        id: 1,
        title: "Destiny 2: Forsaken",
        producer: "Bungie",
        price: 39.99
    },
    {
        id: 2,
        title: "Anthem",
        producer: "BioWare",
        price: 59.99

    },
    {
        id: 3,
        title: "Call of Duty: Black Ops 4",
        producer: "Activision",
        price: 59.99
    },
    {
        id: 4,
        title: "Doom",
        producer: "Bethesda",
        price: 12.99
    },
    {
        id: 5,
        title: "Destiny 2",
        producer: "Bungie",
        price: 24.99
    },
    {
        id: 6,
        title: "FIFA 19",
        producer: "EA Sports",
        price: 59.99
    },
    {
        id: 7,
        title: "Fortnite",
        producer: "Epic Games",
        price: 34.99
    },
    {
        id: 8,
        title: "God of War",
        producer: "Santa Monica Studio",
        price: 59.99
    },
    {
        id: 9,
        title: "Injustice 2: Legendary Edition",
        producer: "Warner Brother Games",
        price: 34.99
    },
    {
        id: 10,
        title: "Kingdom Hearts 3",
        producer: "Bethesda",
        price: 59.99
    },
    {
        id: 11,
        title: "Madden 19",
        producer: "EA Sports",
        price: 59.99
    },
    {
        id: 12,
        title: "Monster Hunter: World",
        producer: "Capcom",
        price: 49.99
    },
    {
        id: 13,
        title: "Mortal Kombat X",
        producer: "Netherealm Studios",
        price: 24.99
    }

];

// Array to store a user's current cart info
var cart = [];

// Function to add items to the cart - Wired up to <a> and <button> in the HTML
function addToCart(id) {
    var gameObj = games[id - 1];

    // If they have already added the book update the qty
    // If not create the qty property and set the value to 1
    if (typeof gameObj.qty === 'undefined') {
        gameObj.qty = 1;
        cart.push(gameObj);
    }
    else {
        gameObj.qty = gameObj.qty + 1;
    }

    //for testing purposes
    console.clear();
    for (var i = 0; i < cart.length; i++) {
        console.log(cart[1]);
    }

    document.getElementById('cart-notification').style.display = "block";

    var cartQty = 0;
    // Update total number of games in the cart
    for (var i = 0; i < cart.length; i++) {
        cartQty += cart[i].qty;
    }

    // Display total number of books
    document.getElementById('cart-notification').innerHTML = cartQty;

    //Update the contents of the dialog
    document.getElementById('cart-contents').innerHTML = getCartContents();
}

// Function to loop through cart and build a string containing book information
function getCartContents() {
    var cartContent = " ";
    var cartTotal = 0;

    // MINI LAB: In the for loop update your running total variable by adding the total price of each title. After the for loop concat total
    // to cartContent string

    for (var i = 0; i < cart.length; i++) {
        cartContent += cart[i].title + "<br>by " + cart[i].producer + "<br>Qty: " + cart[i].qty + " at $" + cart[i].price + "<br><br>";
        cartTotal += (cart[i].qty * cart[i].price);
    }

    cartContent += "Total: $" + cartTotal;

    return cartContent;
}