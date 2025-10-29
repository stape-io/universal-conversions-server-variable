const log = require('logToConsole');
const makeString = require('makeString');
const makeNumber = require('makeNumber');
const getType = require('getType');
const Math = require('Math');
const makeTableMap = require('makeTableMap');
const Object = require('Object');
const JSON = require('JSON');
const getEventData = require('getEventData');
const createRegex = require('createRegex');
const testRegex = require('testRegex');

const platform = data.platform;
const useGa4Array = data.getGa4Items;
const keyId = useGa4Array ? 'item_id' : data.keyId;
const keyBrand = useGa4Array ? 'item_brand' : data.keyBrand;
const keyPrice = useGa4Array ? 'price' : data.keyPrice;
const keyQuantity = useGa4Array ? 'quantity' : data.keyQuantity;
const keyName = useGa4Array ? 'item_name' : data.keyName;
const keyImg = data.keyImg;
let keyCategory = data.keyCategory || [];
const lastCategory = keyCategory ? JSON.parse(JSON.stringify(keyCategory)).reverse()[0] : []; //Force deep copy to avoid array destruction from reverse method
const returnParameter = data[platform + 'ReturnParameter'];
const jsonOutput = data.jsonOutput;
const round = Math.round;
const optionalData = data.addOptionalData ? makeTableMap(data.optionalData, 'optionalParamInputKey', 'optionalParamOutputKey') : undefined;
const task = {};
const categoryRegex = createRegex('item_category');
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

task.klaviyo = {
  items: getKlaviyoItems,
  item: getKlaviyoItems,
  value: getTotalValue
};

/* Main Logic */
if (getType(inputArray) != 'array' || inputArray.length == 0) return;
return jsonOutput ? JSON.stringify(task[platform][returnParameter](inputArray)) : task[platform][returnParameter](inputArray);

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
  if (!optionalData) return;
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

function getGa4CategoryKeys(item) {
  if (useGa4Array) {
    var categoryKeys = Object.entries(item).filter((item) => testRegex(categoryRegex, item[0]));
    keyCategory = categoryKeys.map((category, index) => category[0]);
  }
  return keyCategory;
}

function getGa4CategoryValues(item) {
  if (useGa4Array) {
    var categoryKeys = Object.entries(item).filter((item) => testRegex(categoryRegex, item[0]));
    var categoryValuesArray = categoryKeys.map((category, index) => category[1]);
  }
  return categoryValuesArray;
}

function setGA4Categories(targetItem, item) {
  if (useGa4Array) {
    keyCategory = getGa4CategoryKeys(item);
    keyCategory.forEach((category, index) => {
      targetItem[category] = item[category];
    });
    return targetItem;
  }

  if (!keyCategory || keyCategory.length == 0) return;

  if (keyCategory.length == 1 && getType(item[keyCategory[0]]) === 'array') {
    item[keyCategory[0]].forEach((category, index) => {
      let pseudoIndex = index == 0 ? '' : index + 1;
      targetItem['item_category' + pseudoIndex] = item[keyCategory[0]][index];
    });
    return targetItem;
  } else {
    keyCategory.forEach((category, index) => {
      index = index == 0 ? '' : index + 1;
      targetItem['item_category' + index] = item[category];
    });
  }
  return targetItem;
}

function getGA4Items(inputArray) {
  return inputArray.map((item) => {
    let ga4Item = {
      item_id: item[keyId],
      item_price: item[keyPrice],
      item_quantity: item[keyQuantity],
      item_name: item[keyName]
    };
    ga4Item = setGA4Categories(ga4Item, item);
    if (optionalData) setAdditionalParameters(ga4Item, item, optionalData);
    return ga4Item;
  });
}

function getTikTokContents(inputArray) {
  let formattedItems = inputArray.map((item) => {
    let formattedItem = {
      content_id: item[keyId],
      price: item[keyPrice],
      content_name: item[keyName],
      brand: item[keyBrand],
      content_category: item[lastCategory]
    };
    if (optionalData) setAdditionalParameters(formattedItem, item, optionalData);
    return formattedItem;
  });
  return formattedItems;
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
  if (useGa4Array) {
    keyCategory = getGa4CategoryKeys(inputArray[0]);
  }
  if (keyCategory.length == 0) return;

  if (keyCategory.length == 1 && getType(inputArray[0][lastCategory]) === 'array') return inputArray[0][lastCategory].join('>');
  return keyCategory.length == 1 ? inputArray[0][lastCategory] : keyCategory.map((category) => inputArray[0][category]).join('>');
}

function getRakutenCategories(item) {
  if (useGa4Array) {
    keyCategory = getGa4CategoryKeys(item);
  }

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
    if (useGa4Array || data.buildRakutenCategoryTree) {
      formattedItem.optional_data = formattedItem.optional_data || {};
      formattedItem.optional_data.cat = getRakutenCategories(item);
    }
    if (optionalData) setAdditionalParameters(formattedItem.optional_data, item, optionalData);
    return formattedItem;
  });
  return formattedItems;
}

function getKlaviyoItems(inputArray) {
  inputArray = data.klaviyoReturnParameter === 'item' ? [inputArray[0]] : inputArray;
  let formattedItems = inputArray.map((item) => {
    let formattedItem = {
      ProductID: item[keyId],
      ProductName: item[keyName],
      Quantity: item[keyQuantity],
      ItemPrice: item[keyPrice],
      ImageURL: item[keyImg]
    };
    if (useGa4Array) {
      keyCategory = getGa4CategoryKeys(item);
    }

    if (keyCategory.length == 0) keyCategory = keyCategory;

    if (keyCategory.length == 1 && getType(item[keyCategory[0]]) === 'array') {
      formattedItem.Categories = item[keyCategory[0]];
    }

    if (keyCategory.length == 1 && getType(item[keyCategory[0]]) !== 'array') {
      formattedItem.Categories = keyCategory.map((category) => item[category]);
    }

    if (keyCategory.length > 1 && getType(item[keyCategory]) !== 'array') {
      formattedItem.Categories = keyCategory.map((category) => item[category]);
    }
    if (optionalData) setAdditionalParameters(formattedItem, item, optionalData);
    return formattedItem;
  });
  if (inputArray.length == 1) return data.encloseInArray ? [formattedItems[0]] : formattedItems[0];
  return data.encloseInArray ? [formattedItems] : formattedItems;
}
