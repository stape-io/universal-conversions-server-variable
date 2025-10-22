const log = require('logToConsole');
const makeString = require('makeString');
const makeNumber = require('makeNumber');
const getType = require('getType');
const Math = require('Math');
const makeTableMap = require('makeTableMap');

const platform = data.platform;
const keyId = data.keyId;
const keyBrand = data.keyBrand;
const keyPrice = data.keyPrice;
const keyQuantity = data.keyQuantity;
const keyCategory = data.keyCategory;
const keyName = data.keyName;
const returnParameter = data[platform+"ReturnParameter"];
const round = Math.round;
const optionalData = data.optionalData? makeTableMap(data.optionalData,'optionalParamInputKey','optionalParamOutputKey') : {};
const utils = {};
utils.meta = 
utils.ga4 = 
utils.tiktok =
utils.twitter = 
utils.microsoft = 
utils.klaviyo = 
utils.snapchat = 
utils.googleAdsOffline = 
utils.pinterest = 
utils.criteo = 
utils.reddit =
utils.rakuten = {};
let formattedArray;
    
let inputArray = data.inputArray; 

/* Helper Functions */

utils.toFixed2 = (input) => round(makeNumber(input)*100)/100;

utils.getTotalValue = (inputArray) => {
  return utils.toFixed2(inputArray.reduce((acc,curr) => acc+(makeNumber(curr[keyPrice])*makeNumber(curr[keyQuantity])),0));
};

utils.getIdsArray = (inputArray) => {
  return inputArray.map(item => item[keyId]);
};

utils.getName = (inputArray) => inputArray[0][keyName];

utils.getNumberOfItems = (inputArray) => {
  return inputArray.reduce((acc,curr) => acc + curr[keyQuantity],0);
};

utils.meta.getContents = (inputArray) => {
  var contents = inputArray.map(item => {
    return {
      'id': item[keyId],
      'quantity': item[keyQuantity],
      'item_price': item[keyPrice]
    };
  });
  return contents;
};

utils.setAdditionalParameters = (targetItem,item,optionalData) => {
  for(let key in optionalData) {
    targetItem[optionalData[key]]=item[key]; 
  }
  return targetItem;
};


utils.ga4.setCategoryTree = (targetItem,item) => {
  if(keyCategory.length == 0) return;
  keyCategory.forEach((category,index) => {
   index = index == 0? '': index+1;
   targetItem["item_category"+index]=item[category];
  });
  return targetItem;
};


utils.ga4.getItems = (inputArray) => {
 let formattedArray = inputArray.map(item => { 
  let formattedItem = {
      'item_id': item[keyId],
      'item_price': item[keyPrice],
      'item_quantity': item[keyQuantity],
      'item_name': item[keyName]
    };
  formattedItem = utils.ga4.setCategoryTree(formattedItem,item);
  formattedItem = utils.setAdditionalParameters(formattedItem,item,optionalData);
 return formattedItem;  
 });
 return formattedArray;
};

utils.tiktok.getContents = (inputArray) => {
return inputArray.map((item) => {
  return {
    'content_id': item[keyId],
    'price': item[keyPrice],
    'content_name': item[keyName],
    'brand': item[keyBrand],      
    'content_category': item[keyCategory.reverse()[0]]
  };
});

};


utils.meta.content_ids = utils.getIdsArray;
utils.meta.value = utils.getTotalValue;
utils.meta.num_items = utils.getNumberOfItems;
utils.meta.contents = utils.meta.getContents;

utils.ga4.value = utils.getTotalValue;
utils.ga4.items = utils.ga4.getItems;

utils.tiktok.contents = utils.tiktok.getContents;
utils.tiktok.value = utils.getTotalValue;
utils.tiktok.content_ids = utils.getIdsArray;
utils.tiktok.num_items = utils.getNumberOfItems;

/* Main Logic */
if(getType(inputArray) != 'array' || inputArray.length == 0) return;
formattedArray = utils[platform][returnParameter](inputArray);
return formattedArray;