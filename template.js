const log = require('logToConsole');
const makeString = require('makeString');
const makeNumber = require('makeNumber');
const getType = require('getType');
const Math = require('Math');
const makeTableMap = require('makeTableMap');
const Object = require('Object');
const JSON = require('JSON');
const getEventData = require('getEventData');

const platform = data.platform;
const useGa4Array = data.getGa4Items;
const keyId = useGa4Array ? 'item_id' : data.keyId;
const keyBrand = useGa4Array ? 'item_brand' : data.keyBrand;
const keyPrice = useGa4Array ? 'price' : data.keyPrice;
const keyQuantity = useGa4Array ? 'quantity' : data.keyQuantity;
const keyName = useGa4Array ? 'item_name' : data.keyName;
const keyCategory = data.keyCategory;
const lastCategory = keyCategory ? JSON.parse(JSON.stringify(keyCategory)).reverse()[0] : []; //Force deep copy to avoid array destruction from reverse method
const returnParameter = data[platform + 'ReturnParameter'];
const round = Math.round;
const optionalData = data.addOptionalData ? makeTableMap(data.optionalData, 'optionalParamInputKey', 'optionalParamOutputKey') : undefined;
const task = {};
let formattedArray;
const inputArray = useGa4Array ? getEventData('items') : data.inputArray;

task.meta = {
  content_ids: getIdsArray,
  value: getTotalValue,
  num_items: getNumberOfItems,
  contents: getMetaContents
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

task.twitter = {
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

task.snapchat = {
  contents: getMetaContents,
  value: getTotalValue,
  content_ids: getIdsArray,
  num_items: getNumberOfItems,
  content_name: getName
};

task.reddit = {
  products: getRedditProducts,
  value: getTotalValue,
  item_count: getNumberOfItems
};

task.googleAdsOffline = {
  items: getGoogleAdsItems,
  value: getTotalValue
};

task.criteo = {
  item: getCriteoIds,
  price: getCriteoPrices,
  quantity: getCriteoQuantities,
  category: getCriteoCategories
};

task.rakuten = {
  items: getRakutenLineitems
};

/* Main Logic */
if (getType(inputArray) != 'array' || inputArray.length == 0) return;
formattedArray = task[platform][returnParameter](inputArray);
return formattedArray;

/* Helper Functions */

function toFixed2(input) {
  return round(makeNumber(input) * 100) / 100;
}

function getTotalValue(inputArray) {
  return toFixed2(inputArray.reduce((acc, curr) => acc + makeNumber(curr[keyPrice]) * makeNumber(curr[keyQuantity]), 0));
}

function getIdsArray(inputArray) {
  return inputArray.map((item) => item[keyId]);
}

function getName(inputArray) {
  return inputArray[0][keyName];
}

function getNumberOfItems(inputArray) {
  return inputArray.reduce((acc, curr) => acc + makeNumber(curr[keyQuantity]), 0);
}

function setAdditionalParameters(targetItem, item, optionalData) {
  for (let key in optionalData) {
    targetItem[optionalData[key]] = item[key];
  }
  return targetItem;
}

function getMetaContents(inputArray) {
  const contents = inputArray.map((item) => {
    return {
      id: item[keyId],
      quantity: item[keyQuantity],
      item_price: item[keyPrice]
    };
  });
  return contents;
}

function setGA4Categories(targetItem, item) {
  if (keyCategory.length == 0) return;
  keyCategory.forEach((category, index) => {
    index = index == 0 ? '' : index + 1;
    targetItem['item_category' + index] = item[category];
  });
  return targetItem;
}

function getGA4Items(inputArray) {
  return inputArray.map((item) => {
    let items = {
      item_id: item[keyId],
      item_price: item[keyPrice],
      item_quantity: item[keyQuantity],
      item_name: item[keyName]
    };
    items = setGA4Categories(items, item);
    items = setAdditionalParameters(items, item, optionalData);
    return items;
  });
}

function getTikTokContents(inputArray) {
  return inputArray.map((item) => {
    return {
      content_id: item[keyId],
      price: item[keyPrice],
      content_name: item[keyName],
      brand: item[keyBrand],
      content_category: item[lastCategory]
    };
  });
}

function getTwitterContents(inputArray) {
  return inputArray.map((item) => {
    return {
      content_id: item[keyId],
      content_price: item[keyPrice],
      content_name: item[keyName],
      content_type: item[lastCategory]
    };
  });
}

function getMicrosoftItems(inputArray) {
  return inputArray.map((item) => {
    return {
      id: item[keyId],
      price: item[keyPrice],
      name: item[keyName],
      quantity: item[keyQuantity]
    };
  });
}

function getPinterestContents(inputArray) {
  return inputArray.map((item) => {
    return {
      id: item[keyId],
      item_price: item[keyPrice],
      item_name: item[keyName],
      quantity: item[keyQuantity],
      item_category: item[lastCategory],
      item_brand: item[keyBrand]
    };
  });
}

function getRedditProducts(inputArray) {
  return inputArray.map((item) => {
    return {
      id: item[keyId],
      price: item[keyPrice],
      name: item[keyName],
      category: item[lastCategory]
    };
  });
}

function getGoogleAdsItems(inputArray) {
  return inputArray.map((item) => {
    return {
      productId: item[keyId],
      unitPrice: item[keyPrice],
      quantity: item[keyName]
    };
  });
}

function getCriteoPrices(inputArray) {
  if (inputArray.length == 1) return inputArray[0][keyPrice];
  return inputArray.map((item) => makeString(item[keyPrice])).join('|');
}

function getCriteoIds(inputArray) {
  if (inputArray.length == 1) return inputArray[0][keyId];
  return inputArray.map((item) => makeString(item[keyId])).join('|');
}

function getCriteoQuantities(inputArray) {
  return inputArray.map((item) => makeString(item[keyQuantity])).join('|');
}

function getCriteoCategories(inputArray) {
  if (keyCategory.length == 0) return;
  if (keyCategory.length == 1 && getType(inputArray[0][lastCategory]) === 'array') return inputArray[0][lastCategory].join('>');
  return keyCategory.length == 1 ? inputArray[0][lastCategory] : keyCategory.map((category) => inputArray[0][category]).join('>');
}

function getRakutenCategories(item) {
  if (keyCategory.length == 0) return;
  if (keyCategory.length == 1 && getType(item[lastCategory]) === 'array') return item[lastCategory].join('>');
  return keyCategory.length == 1 ? item[lastCategory] : keyCategory.map((category) => item[category]).join('>');
}

function getRakutenLineitems(inputArray) {
  let formattedItems = inputArray.map((item) => {
    let formattedItem = {
      sku: item[keyId],
      quantity: item[keyQuantity],
      amount: item[keyPrice],
      product_name: item[keyName]
    };
    if (data.buildRakutenCategoryTree) {
      formattedItem.optional_data = formattedItem.optional_data || {};
      formattedItem.optional_data.cat = getRakutenCategories(item);
    }
    if (optionalData) setAdditionalParameters(formattedItem, item, optionalData);

    return formattedItem;
  });

  return formattedItems;
}
