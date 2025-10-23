___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Universal Conversions Variable for SGTM",
  "description": "Maps an input array of products to supported platforms APIs schema.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "GROUP",
    "name": "input_array_group",
    "displayName": "Input Array of Objects",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "TEXT",
        "name": "inputArray",
        "displayName": "Input Array",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "help": "Expected an array of product objects [{}].",
        "alwaysInSummary": true,
        "enablingConditions": [
          {
            "paramName": "getGa4Items",
            "paramValue": true,
            "type": "NOT_EQUALS"
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "getGa4Items",
        "checkboxText": "Use GA4 items from Event Data?",
        "simpleValueType": true
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "platform_group",
    "displayName": "Choose the Platform",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "SELECT",
        "name": "platform",
        "displayName": "Platform",
        "selectItems": [
          {
            "value": "meta",
            "displayValue": "Meta Conversions API v24"
          },
          {
            "value": "ga4",
            "displayValue": "Google Analytics 4"
          },
          {
            "value": "tiktok",
            "displayValue": "TikTok Conversions API v2.0"
          },
          {
            "value": "twitter",
            "displayValue": "Twitter/X Conversions API v12"
          },
          {
            "value": "microsoft",
            "displayValue": "Microsoft Ads v13"
          },
          {
            "value": "klaviyo",
            "displayValue": "Klaviyo (version 2025-10-15)"
          },
          {
            "value": "snapchat",
            "displayValue": "Snapchat"
          },
          {
            "value": "googleAdsOffline",
            "displayValue": "Google Ads Offline"
          },
          {
            "value": "pinterest",
            "displayValue": "Pinterest v5.21.0"
          },
          {
            "value": "criteo",
            "displayValue": "Criteo"
          },
          {
            "value": "rakuten",
            "displayValue": "Rakuten"
          },
          {
            "value": "reddit",
            "displayValue": "Reddit"
          }
        ],
        "simpleValueType": true,
        "subParams": [],
        "alwaysInSummary": false
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "return_parameters_group",
    "displayName": "Parameter to return",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "RADIO",
        "name": "metaReturnParameter",
        "displayName": "",
        "radioItems": [
          {
            "value": "content_ids",
            "displayValue": "content_ids",
            "help": "Returns an array of item ids. Be careful to use the correct \"content_type\" to match the input IDs this variable will return. Take a look at \u003ca href\u003d\"https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/custom-data\"\u003e official documentation\u003c/a\u003e for more information.",
            "subParams": []
          },
          {
            "value": "contents",
            "displayValue": "contents",
            "help": "Returns a list of product objects as described in \u003ca href\u003d\"https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/custom-data\"\u003e official documentation\u003c/a\u003e as of October 2025."
          },
          {
            "value": "value",
            "displayValue": "value",
            "help": "Returns the Input Array total value, as described in \u003ca href\u003d\"https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/custom-data\"\u003e official documentation\u003c/a\u003e as of October 2025."
          },
          {
            "value": "content_name",
            "displayValue": "content_name",
            "help": "Returns a string for the name of the product. This will only return a value if your Input Array has only one object. For more information see description in \u003ca href\u003d\"https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/custom-data\"\u003e official documentation\u003c/a\u003e as of October 2025."
          },
          {
            "value": "num_items",
            "displayValue": "num_items",
            "help": "Returns the number of items in your input array. For more information see description in \u003ca href\u003d\"https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/custom-data\"\u003e official documentation\u003c/a\u003e as of October 2025."
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "platform",
            "paramValue": "meta",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "RADIO",
        "name": "ga4ReturnParameter",
        "displayName": "",
        "radioItems": [
          {
            "value": "value",
            "displayValue": "value",
            "help": "Returns the total value of the products in the Input Array. \u003cbr\u003e\nBe careful to use the correct identifier to match the product\u0027s catalog along with the \"content_type\" you are using.\u003cbr\u003e\nTake a look at \u003ca href\u003d\"https://developers.google.com/analytics/devguides/collection/protocol/ga4/reference/events\"\u003e official documentation\u003c/a\u003e for more information.",
            "subParams": []
          },
          {
            "value": "items",
            "displayValue": "items",
            "help": "Returns a list of product objects as described in \u003ca href\u003d\"https://developers.google.com/analytics/devguides/collection/protocol/ga4/reference/events#add_to_cart_item\" /a\u003e official documentation\u003c/a\u003e as of October 2025. \u003cbr\u003e\nThe list below shows only required parameters. In order to add more parameters use the \u003cstrong\u003eAddtitional/Optional Parameters Section\u003c/strong\u003e"
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "platform",
            "paramValue": "ga4",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "RADIO",
        "name": "tiktokReturnParameter",
        "displayName": "",
        "radioItems": [
          {
            "value": "contents",
            "displayValue": "contents",
            "help": "Returns the required parameter \u003cstrong\u003e contents \u003c/strong\u003e. Take a look at \u003ca href\u003d\"https://business-api.tiktok.com/portal/docs?rid\u003doyn7lhbo6ar\u0026id\u003d1771100799076354\"\u003e official documentation\u003c/a\u003e for more information.",
            "subParams": []
          },
          {
            "value": "value",
            "displayValue": "value",
            "help": "Returns the \u003cstrong\u003e total value \u003c/strong\u003e of the products in the Input Array, disregarding any discounts. \u003cbr\u003e  Take a look at \u003ca href\u003d\"https://business-api.tiktok.com/portal/docs?rid\u003doyn7lhbo6ar\u0026id\u003d1771100799076354\"\u003e official documentation\u003c/a\u003e for more information."
          },
          {
            "value": "num_items",
            "displayValue": "num_items",
            "help": "Returns the \u003cstrong\u003e quantity of items \u003c/strong\u003e in the array. \u003cbr\u003e Take a look at \u003ca href\u003d\"https://business-api.tiktok.com/portal/docs?rid\u003doyn7lhbo6ar\u0026id\u003d1771100799076354\"\u003e official documentation\u003c/a\u003e for more information."
          },
          {
            "value": "content_ids",
            "displayValue": "content_ids",
            "help": "Returns an array of \u003cstrong\u003e ID strings \u003c/strong\u003e. \u003cbr\u003e Take a look at \u003ca href\u003d\"https://business-api.tiktok.com/portal/docs?rid\u003doyn7lhbo6ar\u0026id\u003d1771100799076354\"\u003e official documentation\u003c/a\u003e for more information."
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "platform",
            "paramValue": "tiktok",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "RADIO",
        "name": "twitterReturnParameter",
        "displayName": "",
        "radioItems": [
          {
            "value": "contents",
            "displayValue": "contents",
            "help": "Returns the required parameter \u003cstrong\u003e contents \u003c/strong\u003e. \u003cbr\u003e Take a look at \u003ca href\u003d\"https://business-api.tiktok.com/portal/docs?https://developer.x.com/en/docs/x-ads-api/measurement/web-conversions/api-reference/conversions\"\u003e official documentation\u003c/a\u003e for more information.",
            "subParams": []
          },
          {
            "value": "value",
            "displayValue": "value",
            "help": "Returns the \u003cstrong\u003e total value \u003c/strong\u003e of the products in the Input Array, disregarding any discounts. \u003cbr\u003e  Take a look at \u003ca href\u003d\"https://business-api.tiktok.com/portal/docs?https://developer.x.com/en/docs/x-ads-api/measurement/web-conversions/api-reference/conversions\"\u003e official documentation\u003c/a\u003e for more information."
          },
          {
            "value": "number_items",
            "displayValue": "number_items",
            "help": "Returns the \u003cstrong\u003e quantity of items \u003c/strong\u003e in the array. \u003cbr\u003e Take a look at \u003ca href\u003d\"https://business-api.tiktok.com/portal/docs?https://developer.x.com/en/docs/x-ads-api/measurement/web-conversions/api-reference/conversions\"\u003e official documentation\u003c/a\u003e for more information."
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "platform",
            "paramValue": "twitter",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "RADIO",
        "name": "microsoftReturnParameter",
        "displayName": "",
        "radioItems": [
          {
            "value": "items",
            "displayValue": "items",
            "help": "Returns the required parameter \u003cstrong\u003e items \u003c/strong\u003e. \u003cbr\u003e Take a look at the \u003ca href\u003d\"https://learn.microsoft.com/pt-pt/advertising/guides/uet-conversion-api-integration?view\u003dbingads-13\"\u003e official documentation\u003c/a\u003e for more information.",
            "subParams": []
          },
          {
            "value": "value",
            "displayValue": "value",
            "help": "Returns the \u003cstrong\u003e total value \u003c/strong\u003e of the products in the Input Array, disregarding any discounts. \u003cbr\u003e Take a look at the \u003ca href\u003d\"https://learn.microsoft.com/pt-pt/advertising/guides/uet-conversion-api-integration?view\u003dbingads-13\"\u003e official documentation\u003c/a\u003e for more information."
          },
          {
            "value": "item_ids",
            "displayValue": "itemIds",
            "help": "Returns a list of \u003cstrong\u003e IDs \u003c/strong\u003e. \u003cbr\u003e Take a look at the \u003ca href\u003d\"https://learn.microsoft.com/pt-pt/advertising/guides/uet-conversion-api-integration?view\u003dbingads-13\"\u003e official documentation\u003c/a\u003e for more information."
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "platform",
            "paramValue": "microsoft",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "RADIO",
        "name": "pinterestReturnParameter",
        "displayName": "",
        "radioItems": [
          {
            "value": "contents",
            "displayValue": "contents",
            "help": "Returns the required parameter \u003cstrong\u003e contents \u003c/strong\u003e. \u003cbr\u003e Take a look at the \u003ca href\u003d\"https://developers.pinterest.com/docs/api/v5/events-create/\"\u003e official documentation\u003c/a\u003e for more information.",
            "subParams": []
          },
          {
            "value": "value",
            "displayValue": "value",
            "help": "Returns the \u003cstrong\u003e total value \u003c/strong\u003e of the products in the Input Array, disregarding any discounts.  \u003cbr\u003e Take a look at the \u003ca href\u003d\"https://developers.pinterest.com/docs/api/v5/events-create/\"\u003e official documentation\u003c/a\u003e for more information."
          },
          {
            "value": "num_items",
            "displayValue": "num_items",
            "help": "Returns the number of items in the input array.\n \u003cbr\u003e Take a look at the \u003ca href\u003d\"https://developers.pinterest.com/docs/api/v5/events-create/\"\u003e official documentation\u003c/a\u003e for more information."
          },
          {
            "value": "content_ids",
            "displayValue": "content_ids",
            "help": "Returns a list of \u003cstrong\u003e IDs \u003c/strong\u003e. \u003cbr\u003eTake a look at the \u003ca href\u003d\"https://developers.pinterest.com/docs/api/v5/events-create/\"\u003e official documentation\u003c/a\u003e for more information."
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "platform",
            "paramValue": "pinterest",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "RADIO",
        "name": "snapchatReturnParameter",
        "displayName": "",
        "radioItems": [
          {
            "value": "content_ids",
            "displayValue": "content_ids",
            "help": "Returns an array of item ids. Be careful to use the correct \"content_type\" to match the input IDs this variable will return. Take a look at \u003ca href\u003d\"https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/custom-data\"\u003e official documentation\u003c/a\u003e for more information.",
            "subParams": []
          },
          {
            "value": "contents",
            "displayValue": "contents",
            "help": "Returns a list of product objects as described in \u003ca href\u003d\"https://developers.snap.com/api/marketing-api/Conversions-API/Parameters\"\u003e official documentation\u003c/a\u003e as of October 2025."
          },
          {
            "value": "value",
            "displayValue": "value",
            "help": "Returns the Input Array total value, as described in \u003ca href\u003d\"https://developers.snap.com/api/marketing-api/Conversions-API/Parameters\"\u003e official documentation\u003c/a\u003e as of October 2025."
          },
          {
            "value": "content_name",
            "displayValue": "content_name",
            "help": "Returns a string for the name of the product. This will only return a value if your Input Array has only one object. For more information see description in \u003ca href\u003d\"https://developers.snap.com/api/marketing-api/Conversions-API/Parameters\"\u003e official documentation\u003c/a\u003e as of October 2025."
          },
          {
            "value": "num_items",
            "displayValue": "num_items",
            "help": "Returns the number of items in your input array. For more information see description in \u003ca href\u003d\"https://developers.snap.com/api/marketing-api/Conversions-API/Parameters\"\u003e official documentation\u003c/a\u003e as of October 2025."
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "platform",
            "paramValue": "snapchat",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "RADIO",
        "name": "redditReturnParameter",
        "displayName": "",
        "radioItems": [
          {
            "value": "products",
            "displayValue": "products",
            "help": "Returns a list of product objects as described in \u003ca href\u003d\"https://ads-api.reddit.com/docs/v3/operations/Post%20Conversion%20Events\"\u003e official documentation\u003c/a\u003e as of October 2025."
          },
          {
            "value": "value",
            "displayValue": "value",
            "help": "Returns the Input Array total value, as described in \u003ca href\u003d\"https://ads-api.reddit.com/docs/v3/operations/Post%20Conversion%20Events\"\u003e official documentation\u003c/a\u003e as of October 2025."
          },
          {
            "value": "item_count",
            "displayValue": "item_count",
            "help": "Returns the number of items in your input array. For more information see description in \u003ca href\u003d\"https://ads-api.reddit.com/docs/v3/operations/Post%20Conversion%20Events\"\u003e official documentation\u003c/a\u003e as of October 2025."
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "platform",
            "paramValue": "reddit",
            "type": "EQUALS"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "keys_group",
    "displayName": "Item Array Keys",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "TEXT",
        "name": "keyId",
        "displayName": "Product ID",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "metaReturnParameter",
            "paramValue": "content_ids",
            "type": "EQUALS"
          },
          {
            "paramName": "metaReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "ga4ReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "tiktokReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "tiktokReturnParameter",
            "paramValue": "content_ids",
            "type": "EQUALS"
          },
          {
            "paramName": "twitterReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "microsoftReturnParameter",
            "paramValue": "item_ids",
            "type": "EQUALS"
          },
          {
            "paramName": "microsoftReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "pinterestReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "pinterestReturnParameter",
            "paramValue": "content_ids",
            "type": "EQUALS"
          },
          {
            "paramName": "snapchatReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "snapchatReturnParameter",
            "paramValue": "content_ids",
            "type": "EQUALS"
          },
          {
            "paramName": "redditReturnParameter",
            "paramValue": "products",
            "type": "EQUALS"
          }
        ],
        "help": "Input Array key for item \u003cstrong\u003eunique identifier\u003c/strong\u003e",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "keyBrand",
        "displayName": "Product Brand",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "tiktokReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "pinterestReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          }
        ],
        "help": "Input Array key for item \u003cstrong\u003ebrand\u003c/strong\u003e",
        "valueValidators": []
      },
      {
        "type": "TEXT",
        "name": "keyPrice",
        "displayName": "Price",
        "simpleValueType": true,
        "help": "Input Array key for item \u003cstrong\u003eunit price\u003c/strong\u003e",
        "enablingConditions": [
          {
            "paramName": "metaReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "metaReturnParameter",
            "paramValue": "value",
            "type": "EQUALS"
          },
          {
            "paramName": "ga4ReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "ga4ReturnParameter",
            "paramValue": "value",
            "type": "EQUALS"
          },
          {
            "paramName": "tiktokReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "tiktokReturnParameter",
            "paramValue": "value",
            "type": "EQUALS"
          },
          {
            "paramName": "twitterReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "twitterReturnParameter",
            "paramValue": "value",
            "type": "EQUALS"
          },
          {
            "paramName": "microsoftReturnParameter",
            "paramValue": "value",
            "type": "EQUALS"
          },
          {
            "paramName": "microsoftReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "pinterestReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "pinterestReturnParameter",
            "paramValue": "value",
            "type": "EQUALS"
          },
          {
            "paramName": "snapchatReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "snapchatReturnParameter",
            "paramValue": "value",
            "type": "EQUALS"
          },
          {
            "paramName": "redditReturnParameter",
            "paramValue": "value",
            "type": "EQUALS"
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "keyQuantity",
        "displayName": "Quantity",
        "simpleValueType": true,
        "help": "Input Array key for item \u003cstrong\u003equantity\u003c/strong\u003e",
        "enablingConditions": [
          {
            "paramName": "metaReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "metaReturnParameter",
            "paramValue": "num_items",
            "type": "EQUALS"
          },
          {
            "paramName": "metaReturnParameter",
            "paramValue": "value",
            "type": "EQUALS"
          },
          {
            "paramName": "ga4ReturnParameter",
            "paramValue": "value",
            "type": "EQUALS"
          },
          {
            "paramName": "ga4ReturnParameterm",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "tiktokReturnParameter",
            "paramValue": "value",
            "type": "EQUALS"
          },
          {
            "paramName": "tiktokReturnParameter",
            "paramValue": "num_items",
            "type": "EQUALS"
          },
          {
            "paramName": "twitterReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "twitterReturnParameter",
            "paramValue": "number_items",
            "type": "EQUALS"
          },
          {
            "paramName": "twitterReturnParameter",
            "paramValue": "value",
            "type": "EQUALS"
          },
          {
            "paramName": "microsoftReturnParameter",
            "paramValue": "value",
            "type": "EQUALS"
          },
          {
            "paramName": "microsoftReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "pinterestReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "pinterestReturnParameter",
            "paramValue": "num_items",
            "type": "EQUALS"
          },
          {
            "paramName": "pinterestReturnParameter",
            "paramValue": "value",
            "type": "EQUALS"
          },
          {
            "paramName": "snapchatReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "snapchatReturnParameter",
            "paramValue": "value",
            "type": "EQUALS"
          },
          {
            "paramName": "snapchatReturnParameter",
            "paramValue": "num_items",
            "type": "EQUALS"
          },
          {
            "paramName": "redditReturnParameter",
            "paramValue": "value",
            "type": "EQUALS"
          },
          {
            "paramName": "redditReturnParameter",
            "paramValue": "item_count",
            "type": "EQUALS"
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "keyName",
        "displayName": "Name",
        "simpleValueType": true,
        "help": "Input Array key for item \u003cstrong\u003ename\u003c/strong\u003e",
        "enablingConditions": [
          {
            "paramName": "ga4ReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "tiktokReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "metaReturnParameter",
            "paramValue": "content_name",
            "type": "EQUALS"
          },
          {
            "paramName": "tiktokReturnParameter",
            "paramValue": "content_name",
            "type": "EQUALS"
          },
          {
            "paramName": "twitterReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "microsoftReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "pinterestReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "snapchatReturnParameter",
            "paramValue": "content_name",
            "type": "EQUALS"
          },
          {
            "paramName": "redditReturnParameter",
            "paramValue": "products",
            "type": "EQUALS"
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "keyCategory",
        "displayName": "Category",
        "simpleValueType": true,
        "help": "Input Array key for item \u003cstrong\u003ecategories\u003c/strong\u003e. \u003cbr\u003e If you have multiple category key strings, add one per line as the example below, from broader on top to narrower on bottom:\n\u003cbr\u003e\n\u003cbr\u003e\n category_1 \u003cbr\u003e\n category_2 \u003cbr\u003e\n category_3 \u003cbr\u003e",
        "enablingConditions": [
          {
            "paramName": "ga4ReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "tiktokReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "twitterReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "pinterestReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "redditReturnParameter",
            "paramValue": "products",
            "type": "EQUALS"
          }
        ],
        "valueValidators": [],
        "lineCount": 2,
        "textAsList": true
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "optional_param_group",
    "displayName": "Additional/Optional Data",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "optionalData",
        "displayName": "Parameters List",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Input Array key",
            "name": "optionalParamInputKey",
            "type": "TEXT",
            "isUnique": true,
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Output Array key",
            "name": "optionalParamOutputKey",
            "type": "TEXT",
            "isUnique": true,
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          }
        ],
        "valueValidators": [],
        "alwaysInSummary": true,
        "enablingConditions": [],
        "help": "Map here any additional properties you want to include in the returning array. This feature will be available only if the expected input is a \u003cstrong\u003e non empty array of item objects \u003c/strong\u003e",
        "newRowButtonText": "Click to add a parameter"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "platform",
        "paramValue": "ga4",
        "type": "EQUALS"
      },
      {
        "paramName": "platform",
        "paramValue": "klaviyo",
        "type": "EQUALS"
      },
      {
        "paramName": "platform",
        "paramValue": "tiktok",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "output_configuration_group",
    "displayName": "Output Formatting Options",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "jsonOutput",
        "checkboxText": "Output stringified JSON?",
        "simpleValueType": true,
        "help": "Check this box to return the \u003cstrong\u003eJSON.stringify\u003c/strong\u003e version of the output"
      },
      {
        "type": "CHECKBOX",
        "name": "stringifyAll",
        "checkboxText": "Stringify every output parameter value?",
        "simpleValueType": true,
        "help": "Check this box to have every parameter value casted to String"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

const log = require('logToConsole');
const makeString = require('makeString');
const makeNumber = require('makeNumber');
const getType = require('getType');
const Math = require('Math');
const makeTableMap = require('makeTableMap');
const Object = require('Object');
const getEventData = require('getEventData');


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
const inputArray = data.getGa4Items? getEventData('items') : data.inputArray;



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
  item_count: getNumberOfItems,
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

function getRedditProducts(){
 return inputArray.map((item) => {  
  return {
    'id': item[keyId],
    'price': item[keyPrice],
    'name': item[keyName],
    'category': item[lastCategory]
  };
 });
}


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_event_data",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "items"
              }
            ]
          }
        },
        {
          "key": "eventDataAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []
setup: |-
  data.inputArray = [
      {
          "id": 1,
          "title": "Essence Mascara Lash Princess",
          "description": "The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
          "category": "beauty",
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
          "weight": 4,
          "dimensions": {
              "width": 15.14,
              "height": 13.08,
              "depth": 22.99
          },
          "warrantyInformation": "1 week warranty",
          "shippingInformation": "Ships in 3-5 business days",
          "availabilityStatus": "In Stock",
          "reviews": [
              {
                  "rating": 3,
                  "comment": "Would not recommend!",
                  "date": "2025-04-30T09:41:02.053Z",
                  "reviewerName": "Eleanor Collins",
                  "reviewerEmail": "eleanor.collins@x.dummyjson.com"
              },
              {
                  "rating": 4,
                  "comment": "Very satisfied!",
                  "date": "2025-04-30T09:41:02.053Z",
                  "reviewerName": "Lucas Gordon",
                  "reviewerEmail": "lucas.gordon@x.dummyjson.com"
              },
              {
                  "rating": 5,
                  "comment": "Highly impressed!",
                  "date": "2025-04-30T09:41:02.053Z",
                  "reviewerName": "Eleanor Collins",
                  "reviewerEmail": "eleanor.collins@x.dummyjson.com"
              }
          ],
          "returnPolicy": "No return policy",
          "minimumOrderQuantity": 48,
          "meta": {
              "createdAt": "2025-04-30T09:41:02.053Z",
              "updatedAt": "2025-04-30T09:41:02.053Z",
              "barcode": "5784719087687",
              "qrCode": "https://cdn.dummyjson.com/public/qr-code.png"
          },
          "images": [
              "https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/1.webp"
          ],
          "thumbnail": "https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/thumbnail.webp",
          "quantity": 10,
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
          "weight": 9,
          "dimensions": {
              "width": 9.26,
              "height": 22.47,
              "depth": 27.67
          },
          "warrantyInformation": "1 year warranty",
          "shippingInformation": "Ships in 2 weeks",
          "availabilityStatus": "In Stock",
          "reviews": [
              {
                  "rating": 5,
                  "comment": "Great product!",
                  "date": "2025-04-30T09:41:02.053Z",
                  "reviewerName": "Savannah Gomez",
                  "reviewerEmail": "savannah.gomez@x.dummyjson.com"
              },
              {
                  "rating": 4,
                  "comment": "Awesome product!",
                  "date": "2025-04-30T09:41:02.053Z",
                  "reviewerName": "Christian Perez",
                  "reviewerEmail": "christian.perez@x.dummyjson.com"
              },
              {
                  "rating": 1,
                  "comment": "Poor quality!",
                  "date": "2025-04-30T09:41:02.053Z",
                  "reviewerName": "Nicholas Bailey",
                  "reviewerEmail": "nicholas.bailey@x.dummyjson.com"
              }
          ],
          "returnPolicy": "7 days return policy",
          "minimumOrderQuantity": 20,
          "meta": {
              "createdAt": "2025-04-30T09:41:02.053Z",
              "updatedAt": "2025-04-30T09:41:02.053Z",
              "barcode": "9170275171413",
              "qrCode": "https://cdn.dummyjson.com/public/qr-code.png"
          },
          "images": [
              "https://cdn.dummyjson.com/product-images/beauty/eyeshadow-palette-with-mirror/1.webp"
          ],
          "thumbnail": "https://cdn.dummyjson.com/product-images/beauty/eyeshadow-palette-with-mirror/thumbnail.webp",
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
          "weight": 8,
          "dimensions": {
              "width": 29.27,
              "height": 27.93,
              "depth": 20.59
          },
          "warrantyInformation": "3 months warranty",
          "shippingInformation": "Ships in 1-2 business days",
          "availabilityStatus": "In Stock",
          "reviews": [
              {
                  "rating": 4,
                  "comment": "Would buy again!",
                  "date": "2025-04-30T09:41:02.053Z",
                  "reviewerName": "Alexander Jones",
                  "reviewerEmail": "alexander.jones@x.dummyjson.com"
              },
              {
                  "rating": 5,
                  "comment": "Highly impressed!",
                  "date": "2025-04-30T09:41:02.053Z",
                  "reviewerName": "Elijah Cruz",
                  "reviewerEmail": "elijah.cruz@x.dummyjson.com"
              },
              {
                  "rating": 1,
                  "comment": "Very dissatisfied!",
                  "date": "2025-04-30T09:41:02.053Z",
                  "reviewerName": "Avery Perez",
                  "reviewerEmail": "avery.perez@x.dummyjson.com"
              }
          ],
          "returnPolicy": "No return policy",
          "minimumOrderQuantity": 22,
          "meta": {
              "createdAt": "2025-04-30T09:41:02.053Z",
              "updatedAt": "2025-04-30T09:41:02.053Z",
              "barcode": "8418883906837",
              "qrCode": "https://cdn.dummyjson.com/public/qr-code.png"
          },
          "images": [
              "https://cdn.dummyjson.com/product-images/beauty/powder-canister/1.webp"
          ],
          "thumbnail": "https://cdn.dummyjson.com/product-images/beauty/powder-canister/thumbnail.webp",
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
          "weight": 1,
          "dimensions": {
              "width": 18.11,
              "height": 28.38,
              "depth": 22.17
          },
          "warrantyInformation": "3 year warranty",
          "shippingInformation": "Ships in 1 week",
          "availabilityStatus": "In Stock",
          "reviews": [
              {
                  "rating": 4,
                  "comment": "Great product!",
                  "date": "2025-04-30T09:41:02.053Z",
                  "reviewerName": "Liam Garcia",
                  "reviewerEmail": "liam.garcia@x.dummyjson.com"
              },
              {
                  "rating": 5,
                  "comment": "Great product!",
                  "date": "2025-04-30T09:41:02.053Z",
                  "reviewerName": "Ruby Andrews",
                  "reviewerEmail": "ruby.andrews@x.dummyjson.com"
              },
              {
                  "rating": 5,
                  "comment": "Would buy again!",
                  "date": "2025-04-30T09:41:02.053Z",
                  "reviewerName": "Clara Berry",
                  "reviewerEmail": "clara.berry@x.dummyjson.com"
              }
          ],
          "returnPolicy": "7 days return policy",
          "minimumOrderQuantity": 40,
          "meta": {
              "createdAt": "2025-04-30T09:41:02.053Z",
              "updatedAt": "2025-04-30T09:41:02.053Z",
              "barcode": "9467746727219",
              "qrCode": "https://cdn.dummyjson.com/public/qr-code.png"
          },
          "images": [
              "https://cdn.dummyjson.com/product-images/beauty/red-lipstick/1.webp"
          ],
          "thumbnail": "https://cdn.dummyjson.com/product-images/beauty/red-lipstick/thumbnail.webp",
          "quantity": 9,
          "categoryTree": [
              "cat1",
              "cat2",
              "cat3"
          ],
          "categoryTreeString": "cat1|cat2|cat3"
      }
  ];


___NOTES___

Created on 23/10/2025, 15:46:46


