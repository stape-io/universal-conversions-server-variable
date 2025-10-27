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
    

/* Main Logic */
if(getType(inputArray) != 'array' || inputArray.length == 0) return;


return formattedArray;