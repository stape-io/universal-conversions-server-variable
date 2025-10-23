const log = require('logToConsole');
const makeString = require('makeString');
const makeNumber = require('makeNumber');
const getType = require('getType');
const Math = require('Math');
const makeTableMap = require('makeTableMap');
const Object = require('Object');



//let inputArray = data.inputArray;
const platform = data.platform;
const keyId = data.keyId;
const keyBrand = data.keyBrand;
const keyPrice = data.keyPrice;
const keyQuantity = data.keyQuantity;
const keyCategory = data.keyCategory;
const lastCategory = keyCategory ? keyCategory.reverse()[0] : undefined;
const keyName = data.keyName;
const returnParameter = data[platform+"ReturnParameter"];
const round = Math.round;
const optionalData = data.optionalData? makeTableMap(data.optionalData,'optionalParamInputKey','optionalParamOutputKey') : {};
const task = {};
let formattedArray;
const inputArray = data.inputArray;
    

task.meta = {
  content_ids : getIdsArray,
  value :  getTotalValue,
  num_items :  getNumberOfItems,
  contents : getMetaContents
};

task.ga4 = {
 value: getTotalValue,
 items: getGA4Items
};


task.tiktok = {
contents: getTikTokContents,
value: getTotalValue,
content_ids: getIdsArray,
num_items: getNumberOfItems
};


task.twitter ={
  contents: getTwitterContents,
  value: getTotalValue,
  number_items: getNumberOfItems
};

task.microsoft = {
  items: getMicrosoftItems,
  value: getTotalValue,
  item_ids: getIdsArray
};

task.pinterest = {
  contents: getPinterestContents,
  value: getTotalValue,
  num_items: getNumberOfItems,
  content_ids: getIdsArray
};


/* Main Logic */
if(getType(inputArray) != 'array' || inputArray.length == 0) return;
formattedArray = task[platform][returnParameter](inputArray);
return formattedArray;


/* Helper Functions */

function toFixed2(input){return round(makeNumber(input)*100)/100;}

function getTotalValue(inputArray) {
  return toFixed2(inputArray.reduce((acc,curr) => acc+(makeNumber(curr[keyPrice])*makeNumber(curr[keyQuantity])),0));
}

function getIdsArray(inputArray) {
  return inputArray.map(item => item[keyId]);
}

function getName (inputArray){return inputArray[0][keyName];}

function getNumberOfItems(inputArray) {
  return inputArray.reduce((acc,curr) => acc + makeNumber(curr[keyQuantity]),0);
}

function setAdditionalParameters (targetItem,item,optionalData) {
  for(let key in optionalData) {
    targetItem[optionalData[key]]=item[key]; 
  }
  return targetItem;
}

function getMetaContents(array){
  const contents = array.map(item => {
    return {
      'id': item[keyId],
      'quantity': item[keyQuantity],
      'item_price': item[keyPrice]
    };
  });
  return contents;
}

function setGA4Categories(targetItem,item) {
  if(keyCategory.length == 0) return;
  keyCategory.forEach((category,index) => {
   index = index == 0? '': index+1;
   targetItem["item_category"+index]=item[category];
  });
  return targetItem;
}

function getGA4Items(inputArray){
 return inputArray.map(item => { 
  let items = {
      'item_id': item[keyId],
      'item_price': item[keyPrice],
      'item_quantity': item[keyQuantity],
      'item_name': item[keyName]
    };
  items = setGA4Categories(items,item);
  items = setAdditionalParameters(items,item,optionalData);
 return items;  
 });
}

function getTikTokContents (inputArray) {
 return inputArray.map((item) => {
  return {
    'content_id': item[keyId],
    'price': item[keyPrice],
    'content_name': item[keyName],
    'brand': item[keyBrand],      
    'content_category': item[lastCategory]
  };
 });
}

function getTwitterContents(inputArray) {
 return inputArray.map((item) => {  
  return {
    'content_id': item[keyId],
    'content_price': item[keyPrice],
    'content_name': item[keyName],
    'content_type': item[lastCategory]
  };
 });
}

function getMicrosoftItems(inputArray) {
 return inputArray.map((item) => {  
  return {
    'id': item[keyId],
    'price': item[keyPrice],
    'name': item[keyName],
    'quantity': item[keyQuantity]
  };
 });
}

function getPinterestContents(){
 return inputArray.map((item) => {  
  return {
    'id': item[keyId],
    'item_price': item[keyPrice],
    'item_name': item[keyName],
    'quantity': item[keyQuantity],
    'item_category': item[lastCategory],
    'item_brand': item[keyBrand]
  };
 });
}

