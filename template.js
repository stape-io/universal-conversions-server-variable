const log = require('logToConsole');
const makeString = require('makeString');
const makeNumber = require('makeNumber');
const getType = require('getType');




//let inputArray = data.inputArray;
const platform = data.platform;
const keyId = data.keyId;
const keyPrice = data.keyPrice;
const keyQuantity = data.keyQuantity;
const keyCategory = data.keyCategory;
const keyName = data.keyName;
const returnParameter = data[platform+"ReturnParameter"];

const helperMethods = {};
helperMethods.shared =
helperMethods.meta = 
helperMethods.ga4 = 
helperMethods.tiktok =
helperMethods.twitter = 
helperMethods.microsoft = 
helperMethods.klaviyo = 
helperMethods.snapchat = 
helperMethods.googleAdsOffline = 
helperMethods.pinterest = 
helperMethods.criteo = 
helperMethods.reddit =
helperMethods.rakuten = {};
let formattedArray;


let inputArray = [
    {
        "id": 1,
        "title": "Essence Mascara Lash Princess",
        "description": "The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
        "category": "beauty",
        "quantity": 2,
        "price": 9.99,
        "discountPercentage": 10.48,
        "rating": 2.56,
        "stock": 99,
        "tags": [
            "beauty",
            "mascara"
        ],
        "brand": "Essence",
        "sku": "BEA-ESS-ESS-001",
        "categoryTree": [
            "cat1",
            "cat2",
            "cat3"
        ],
        "categoryTreeString": "cat1|cat2|cat3"
    },
    {
        "id": 2,
        "title": "Eyeshadow Palette with Mirror",
        "description": "The Eyeshadow Palette with Mirror offers a versatile range of eyeshadow shades for creating stunning eye looks. With a built-in mirror, it's convenient for on-the-go makeup application.",
        "category": "beauty",
        "price": 19.99,
        "discountPercentage": 18.19,
        "rating": 2.86,
        "stock": 34,
        "tags": [
            "beauty",
            "eyeshadow"
        ],
        "brand": "Glamour Beauty",
        "sku": "BEA-GLA-EYE-002",
        "warrantyInformation": "1 year warranty",
        "shippingInformation": "Ships in 2 weeks",
        "availabilityStatus": "In Stock",
        "returnPolicy": "7 days return policy",
        "minimumOrderQuantity": 20,
        "quantity": 5,
        "categoryTree": [
            "cat1",
            "cat2",
            "cat3"
        ],
        "categoryTreeString": "cat1|cat2|cat3"
    },
    {
        "id": 3,
        "title": "Powder Canister",
        "description": "The Powder Canister is a finely milled setting powder designed to set makeup and control shine. With a lightweight and translucent formula, it provides a smooth and matte finish.",
        "category": "beauty",
        "price": 14.99,
        "discountPercentage": 9.84,
        "rating": 4.64,
        "stock": 89,
        "tags": [
            "beauty",
            "face powder"
        ],
        "brand": "Velvet Touch",
        "sku": "BEA-VEL-POW-003",
        "warrantyInformation": "3 months warranty",
        "shippingInformation": "Ships in 1-2 business days",
        "availabilityStatus": "In Stock",
        "returnPolicy": "No return policy",
        "minimumOrderQuantity": 22,
        "quantity": 4,
        "categoryTree": [
            "cat1",
            "cat2",
            "cat3"
        ],
        "categoryTreeString": "cat1|cat2|cat3"
    },
    {
        "id": 4,
        "title": "Red Lipstick",
        "description": "The Red Lipstick is a classic and bold choice for adding a pop of color to your lips. With a creamy and pigmented formula, it provides a vibrant and long-lasting finish.",
        "category": "beauty",
        "price": 12.99,
        "discountPercentage": 12.16,
        "rating": 4.36,
        "stock": 91,
        "tags": [
            "beauty",
            "lipstick"
        ],
        "brand": "Chic Cosmetics",
        "sku": "BEA-CHI-LIP-004",
        "quantity": 9,
        "categoryTree": [
            "cat1",
            "cat2",
            "cat3"
        ],
        "categoryTreeString": "cat1|cat2|cat3"
      }
    ];
    


/* Helper Functions */

helperMethods.shared.getTotalValue = (inputArray) => {
  return inputArray.reduce((acc,curr) => acc+(curr[keyPrice]*curr[keyQuantity]),0);
};

helperMethods.shared.getIdsArray = (inputArray) => {
  return inputArray.map(item => item[keyId]);
};

helperMethods.shared.getNameArray = (inputArray) => {
  return inputArray.map(item => item[keyName]);
};

helperMethods.shared.getNumberOfItems = (inputArray) => {
  return inputArray.reduce((acc,curr) => acc + curr[keyQuantity]);
};

helperMethods.shared.contents = (inputArray) => {
  var contents = inputArray.map(item => {
    return {
      'id': item[keyId],
      'quantity': item[keyQuantity],
      'item_price': item[keyPrice]
    };
  });
  return contents;
};

helperMethods.meta.content_ids = helperMethods.shared.getIdsArray
helperMethods.meta.value = helperMethods.shared.getTotalValue
helperMethods.meta.content_name = helperMethods.shared.getNameArray
helperMethods.meta.num_items = helperMethods.shared.getNumberOfItems
helperMethods.meta.contents = helperMethods.shared.contents

/* Main Logic */
if(getType(inputArray) != 'array' || inputArray.length == 0) return;
formattedArray = helperMethods[platform][returnParameter](inputArray);



return formattedArray;