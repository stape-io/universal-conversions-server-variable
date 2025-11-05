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
const inputArray = useGa4Array ? getEventData('items') : data.inputArray;
const keyId = useGa4Array ? 'item_id' : data.keyId;
const keyBrand = useGa4Array ? 'item_brand' : data.keyBrand;
const keyPrice = useGa4Array ? 'price' : data.keyPrice;
const keyQuantity = useGa4Array ? 'quantity' : data.keyQuantity;
const keyName = useGa4Array ? 'item_name' : data.keyName;
const keyImg = data.keyImg;
let keyCategory = data.keyCategory && data.keyCategory.split(',').map((category) => category.trim());
let lastCategory = getType(keyCategory) === 'array' && keyCategory[keyCategory.length - 1];
const returnParameter = data[platform + 'ReturnParameter'];
const jsonOutput = data.jsonOutput;
const round = Math.round;
const optionalData = data.addOptionalData ? makeTableMap(data.optionalData, 'optionalParamInputKey', 'optionalParamOutputKey') : undefined;
const task = {};
let returnValue;
const categoryRegex = createRegex('item_category');

/*
=======================================================================
                         MAIN EXECUTION
========================================================================
*/

if (getType(inputArray) != 'array' || inputArray.length == 0) return;

task.meta = {
  content_name: getName,
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

task.rakuten = {
  items: getRakutenLineitems
};

task.klaviyo = {
  items: getKlaviyoItems,
  item: getKlaviyoItems,
  value: getTotalValue
};

returnValue = task[platform][returnParameter](inputArray);
return jsonOutput ? JSON.stringify(returnValue) : returnValue;

/*
=======================================================================
                               HELPERS 
========================================================================
*/

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

/*
========================================================================
                        VENDOR RELATED FUNCTIONS
========================================================================
*/

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
    const categoryKeys = Object.entries(item).filter((item) => testRegex(categoryRegex, item[0]));
    keyCategory = categoryKeys.map((category) => category[0]);
  }
  return keyCategory;
}

function setGA4Categories(targetItem, item) {
  if (!keyCategory || keyCategory.length === 0) return targetItem;

  if (useGa4Array) {
    keyCategory = getGa4CategoryKeys(item);
    keyCategory.forEach((category, index) => {
      targetItem[category] = item[category];
    });
    return targetItem;
  }

  if (keyCategory.length === 1 && getType(item[keyCategory[0]]) === 'array') {
    item[keyCategory[0]].forEach((category, index) => {
      const pseudoIndex = index === 0 ? '' : index + 1;
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
  if (useGa4Array) return inputArray;
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
  const formattedItems = inputArray.map((item) => {
    if (useGa4Array) {
      keyCategory = getGa4CategoryKeys(item);
      lastCategory = keyCategory[keyCategory.length - 1];
    }
    if (getType(item[lastCategory]) === 'array') {
      lastCategory = item[lastCategory];
      lastCategory = lastCategory[lastCategory.length - 1];
    }
    const formattedItem = {
      content_id: item[keyId],
      price: item[keyPrice],
      content_name: item[keyName],
      brand: item[keyBrand],
      content_category: item[lastCategory] || lastCategory
    };
    if (optionalData) setAdditionalParameters(formattedItem, item, optionalData);
    return formattedItem;
  });
  return formattedItems;
}

function getTwitterContents(inputArray) {
  return inputArray.map((item) => {
    if (useGa4Array) {
      keyCategory = getGa4CategoryKeys(item);
      lastCategory = keyCategory[keyCategory.length - 1];
    }
    if (getType(item[lastCategory]) === 'array') {
      lastCategory = item[lastCategory];
      lastCategory = lastCategory[lastCategory.length - 1];
    }
    return {
      content_id: item[keyId],
      content_price: item[keyPrice],
      content_name: item[keyName],
      content_type: item[lastCategory] || lastCategory
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
    if (useGa4Array) {
      keyCategory = getGa4CategoryKeys(item);
      lastCategory = keyCategory[keyCategory.length - 1];
    }
    if (getType(item[lastCategory]) === 'array') {
      lastCategory = item[lastCategory];
      lastCategory = lastCategory[lastCategory.length - 1];
    }
    return {
      id: item[keyId],
      item_price: item[keyPrice],
      item_name: item[keyName],
      quantity: item[keyQuantity],
      item_category: item[lastCategory] || lastCategory,
      item_brand: item[keyBrand]
    };
  });
}

function getRedditProducts(inputArray) {
  return inputArray.map((item) => {
    if (useGa4Array) {
      keyCategory = getGa4CategoryKeys(item);
      lastCategory = keyCategory[keyCategory.length - 1];
    }
    if (getType(item[lastCategory]) === 'array') {
      lastCategory = item[lastCategory];
      lastCategory = lastCategory[lastCategory.length - 1];
    }
    return {
      id: item[keyId],
      price: item[keyPrice],
      name: item[keyName],
      category: item[lastCategory] || lastCategory
    };
  });
}

function getGoogleAdsItems(inputArray) {
  return inputArray.map((item) => {
    return {
      productId: item[keyId],
      unitPrice: item[keyPrice],
      quantity: item[keyQuantity]
    };
  });
}

function getRakutenCategories(item) {
  if (useGa4Array) {
    keyCategory = getGa4CategoryKeys(item);
  }

  if (keyCategory.length === 0) return;

  if (keyCategory.length === 1 && getType(item[lastCategory]) === 'array') return item[lastCategory].join('>');

  return keyCategory.length === 1 ? item[lastCategory] : keyCategory.map((category) => item[category]).join('>');
}

function getRakutenLineitems(inputArray) {
  const formattedItems = inputArray.map((item) => {
    const formattedItem = {
      sku: item[keyId],
      quantity: item[keyQuantity],
      amount: item[keyPrice],
      product_name: item[keyName]
    };
    if (useGa4Array || data.buildRakutenCategoryTree) {
      formattedItem.optional_data = formattedItem.optional_data || {};
      formattedItem.optional_data.category = getRakutenCategories(item);
    }
    if (optionalData) setAdditionalParameters(formattedItem.optional_data, item, optionalData);
    return formattedItem;
  });
  return formattedItems;
}

function getKlaviyoItems(inputArray) {
  inputArray = data.klaviyoReturnParameter === 'item' ? [inputArray[0]] : inputArray;
  const formattedItems = inputArray.map((item) => {
    const formattedItem = {
      ProductID: item[keyId],
      ProductName: item[keyName],
      Quantity: item[keyQuantity],
      ItemPrice: item[keyPrice],
      Brand: item[keyBrand],
      ImageURL: item[keyImg]
    };
    if (useGa4Array) {
      keyCategory = getGa4CategoryKeys(item);
    }

    if (keyCategory.length === 0) keyCategory = keyCategory;

    if (keyCategory.length === 1 && getType(item[keyCategory[0]]) === 'array') {
      formattedItem.Categories = item[keyCategory[0]];
    }

    if (keyCategory.length === 1 && getType(item[keyCategory[0]]) !== 'array') {
      formattedItem.Categories = keyCategory.map((category) => item[category]);
    }

    if (keyCategory.length > 1 && getType(item[keyCategory]) !== 'array') {
      formattedItem.Categories = keyCategory.map((category) => item[category]);
    }
    if (optionalData) setAdditionalParameters(formattedItem, item, optionalData);
    return formattedItem;
  });
  if (data.klaviyoReturnParameter === 'item') return data.encloseInArray ? [formattedItems[0]] : formattedItems[0];
  else return formattedItems;
}
