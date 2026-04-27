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
  "displayName": "Universal Conversions Variable",
  "categories": [
    "UTILITY",
    "DATA_WAREHOUSING"
  ],
  "description": "Maps an input array of products to supported platforms APIs schema.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
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
            "displayValue": "Meta Conversions API"
          },
          {
            "value": "ga4",
            "displayValue": "Google Analytics 4"
          },
          {
            "value": "tiktok",
            "displayValue": "TikTok Conversions API"
          },
          {
            "value": "twitter",
            "displayValue": "Twitter/X Conversions API"
          },
          {
            "value": "microsoft",
            "displayValue": "Microsoft Ads"
          },
          {
            "value": "klaviyo",
            "displayValue": "Klaviyo"
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
            "displayValue": "Pinterest"
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
        "name": "googleAdsOfflineReturnParameter",
        "displayName": "",
        "radioItems": [
          {
            "value": "value",
            "displayValue": "conversionValue",
            "help": "Returns the total value of the products in the Input Array.\u003cbr\u003e\nTake a look at \u003ca href\u003d\"https://developers.google.com/google-ads/api/reference/rpc/v22/ConversionUploadService/UploadClickConversions?transport\u003drest\"\u003e official documentation\u003c/a\u003e for more information.",
            "subParams": []
          },
          {
            "value": "items",
            "displayValue": "items",
            "help": "Returns a list of product objects as described in \u003ca href\u003d\"https://developers.google.com/google-ads/api/reference/rpc/v22/ConversionUploadService/UploadClickConversions?transport\u003drest\" /a\u003e official documentation\u003c/a\u003e as of October 2025. \u003cbr\u003e\nThe list below shows only required parameters. In order to add more parameters use the \u003cstrong\u003eAddtitional/Optional Parameters Section\u003c/strong\u003e"
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "platform",
            "paramValue": "googleAdsOffline",
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
            "help": "Returns the required parameter \u003cstrong\u003e contents \u003c/strong\u003e. \u003cbr\u003e Take a look at \u003ca href\u003d\"https://developer.x.com/en/docs/x-ads-api/measurement/web-conversions/api-reference/conversions\"\u003e official documentation\u003c/a\u003e for more information.",
            "subParams": []
          },
          {
            "value": "value",
            "displayValue": "value",
            "help": "Returns the \u003cstrong\u003e total value \u003c/strong\u003e of the products in the Input Array, disregarding any discounts. \u003cbr\u003e  Take a look at \u003ca href\u003d\"https://developer.x.com/en/docs/x-ads-api/measurement/web-conversions/api-reference/conversions\"\u003e official documentation\u003c/a\u003e for more information."
          },
          {
            "value": "number_items",
            "displayValue": "number_items",
            "help": "Returns the \u003cstrong\u003e quantity of items \u003c/strong\u003e in the array. \u003cbr\u003e Take a look at \u003ca href\u003d\"https://developer.x.com/en/docs/x-ads-api/measurement/web-conversions/api-reference/conversions\"\u003e official documentation\u003c/a\u003e for more information."
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
            "help": "Returns the required parameter \u003cstrong\u003e items \u003c/strong\u003e. \u003cbr\u003e Take a look at the \u003ca href\u003d\"https://learn.microsoft.com/en-us/advertising/guides/uet-conversion-api-integration?view\u003dbingads-13\"\u003e official documentation\u003c/a\u003e for more information.",
            "subParams": []
          },
          {
            "value": "value",
            "displayValue": "value",
            "help": "Returns the \u003cstrong\u003e total value \u003c/strong\u003e of the products in the Input Array, disregarding any discounts. \u003cbr\u003e Take a look at the \u003ca href\u003d\"https://learn.microsoft.com/en-us/advertising/guides/uet-conversion-api-integration?view\u003dbingads-13\"\u003e official documentation\u003c/a\u003e for more information."
          },
          {
            "value": "item_ids",
            "displayValue": "itemIds",
            "help": "Returns a list of \u003cstrong\u003e IDs \u003c/strong\u003e. \u003cbr\u003e Take a look at the \u003ca href\u003d\"https://learn.microsoft.com/en-us/advertising/guides/uet-conversion-api-integration?view\u003dbingads-13\"\u003e official documentation\u003c/a\u003e for more information."
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
            "help": "Returns an array of item ids. Be careful to use the correct \"content_type\" to match the input IDs this variable will return. Take a look at \u003ca href\u003d\"https://developers.snap.com/api/marketing-api/Conversions-API/Parameters\"\u003e official documentation\u003c/a\u003e for more information.",
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
      },
      {
        "type": "RADIO",
        "name": "rakutenReturnParameter",
        "displayName": "",
        "radioItems": [
          {
            "value": "items",
            "displayValue": "items",
            "help": "Returns a list of product objects as described in \u003ca href\u003d\"https://go.rakutenadvertising.com/hubfs/Rakuten-Affiliate-for-Server-Side-Google-Tag-Manager.pdf\"\u003e official documentation\u003c/a\u003e as of October 2025."
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "platform",
            "paramValue": "rakuten",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "RADIO",
        "name": "klaviyoReturnParameter",
        "displayName": "",
        "radioItems": [
          {
            "value": "items",
            "displayValue": "items",
            "help": "Returns a list of product objects as described in \u003ca href\u003d\"https://developers.klaviyo.com/en/docs/guide_to_integrating_a_platform_without_a_pre_built_klaviyo_integration#active-on-site-tracking-snippet\"\u003e official documentation\u003c/a\u003e as of October 2025."
          },
          {
            "value": "item",
            "displayValue": "item",
            "help": "Returns a list of one product object as described in \u003ca href\u003d\"https://developers.klaviyo.com/en/docs/guide_to_integrating_a_platform_without_a_pre_built_klaviyo_integration#active-on-site-tracking-snippet\"\u003e official documentation\u003c/a\u003e as of October 2025.",
            "subParams": [
              {
                "type": "CHECKBOX",
                "name": "encloseInArray",
                "checkboxText": "Enclose output item object in an Array?",
                "simpleValueType": true
              }
            ]
          },
          {
            "value": "value",
            "displayValue": "value",
            "help": "Returns the total event value as described in \u003ca href\u003d\"https://developers.klaviyo.com/en/docs/guide_to_integrating_a_platform_without_a_pre_built_klaviyo_integration#active-on-site-tracking-snippet\"\u003e official documentation\u003c/a\u003e as of October 2025."
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "platform",
            "paramValue": "klaviyo",
            "type": "EQUALS"
          }
        ]
      }
    ]
  },
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
          },
          {
            "paramName": "googleAdsOfflineReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "criteoReturnParameter",
            "paramValue": "item",
            "type": "EQUALS"
          },
          {
            "paramName": "rakutenReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "klaviyoReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "klaviyoReturnParameter",
            "paramValue": "item",
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
          },
          {
            "paramName": "klaviyoReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "klaviyoReturnParameter",
            "paramValue": "item",
            "type": "EQUALS"
          },
          {
            "paramName": "ga4ReturnParameter",
            "paramValue": "items",
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
          },
          {
            "paramName": "redditReturnParameter",
            "paramValue": "products",
            "type": "EQUALS"
          },
          {
            "paramName": "googleAdsOfflineReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "googleAdsOfflineReturnParameter",
            "paramValue": "value",
            "type": "EQUALS"
          },
          {
            "paramName": "criteoReturnParameter",
            "paramValue": "price",
            "type": "EQUALS"
          },
          {
            "paramName": "rakutenReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "klaviyoReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "klaviyoReturnParameter",
            "paramValue": "item",
            "type": "EQUALS"
          },
          {
            "paramName": "klaviyoReturnParameter",
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
            "paramName": "ga4ReturnParameter",
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
          },
          {
            "paramName": "googleAdsOfflineReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "googleAdsOfflineReturnParameter",
            "paramValue": "value",
            "type": "EQUALS"
          },
          {
            "paramName": "criteoReturnParameter",
            "paramValue": "quantity",
            "type": "EQUALS"
          },
          {
            "paramName": "rakutenReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "klaviyoReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "klaviyoReturnParameter",
            "paramValue": "item",
            "type": "EQUALS"
          },
          {
            "paramName": "klaviyoReturnParameter",
            "paramValue": "value",
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
          },
          {
            "paramName": "rakutenReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "klaviyoReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "klaviyoReturnParameter",
            "paramValue": "item",
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
        "name": "keyImg",
        "displayName": "Image URL",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "klaviyoReturnParameter",
            "paramValue": "item",
            "type": "EQUALS"
          },
          {
            "paramName": "klaviyoReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "category_group",
        "displayName": "",
        "groupStyle": "NO_ZIPPY",
        "subParams": [
          {
            "type": "TEXT",
            "name": "keyCategory",
            "displayName": "Category",
            "simpleValueType": true,
            "help": "Input Array key for item \u003cstrong\u003ecategories\u003c/strong\u003e. This field supports a single category key, multiple category keys and an array of category keys.\u003cbr\u003e If you have multiple category key strings, add them comma separated, from broader on left to narrower on right:\n\u003cbr\u003e\u003cb\u003eExample for multiple category keys:\u003c/b\u003e\n\u003cbr\u003e\n category_1, category_2, category_3\n\u003cbr\u003e\n\u003cbr\u003e\u003cb\u003eExample for array of category keys:\u003c/b\u003e\n\u003cbr\u003e\n [category_1, category_2, category_3]",
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
              },
              {
                "paramName": "criteoReturnParameter",
                "paramValue": "category",
                "type": "EQUALS"
              },
              {
                "paramName": "rakutenReturnParameter",
                "paramValue": "items",
                "type": "EQUALS"
              },
              {
                "paramName": "klaviyoReturnParameter",
                "paramValue": "items",
                "type": "EQUALS"
              },
              {
                "paramName": "klaviyoReturnParameter",
                "paramValue": "item",
                "type": "EQUALS"
              }
            ],
            "valueValidators": [],
            "textAsList": false
          },
          {
            "type": "CHECKBOX",
            "name": "buildRakutenCategoryTree",
            "checkboxText": "Build Rakuten Category Tree?",
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "platform",
                "paramValue": "rakuten",
                "type": "EQUALS"
              }
            ],
            "help": "If you have multiple categories on the field above, check this to build the category tree as described in \u003ca href\u003d\"https://go.rakutenadvertising.com/hubfs/Rakuten-Affiliate-for-Server-Side-Google-Tag-Manager.pdf\"\u003e official documentation \u003c/a\u003e."
          }
        ]
      }
    ],
    "enablingConditions": [
      {
        "paramName": "getGa4Items",
        "paramValue": true,
        "type": "NOT_EQUALS"
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
        "type": "CHECKBOX",
        "name": "addOptionalData",
        "checkboxText": "Add item-level optional data?",
        "simpleValueType": true
      },
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
        "enablingConditions": [
          {
            "paramName": "addOptionalData",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "help": "Map here any additional properties you want to include in the returning array. This feature will be available only if the expected input is a \u003cstrong\u003e non empty array of item objects \u003c/strong\u003e",
        "newRowButtonText": "Add parameter"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "ga4ReturnParameter",
        "paramValue": "items",
        "type": "EQUALS"
      },
      {
        "paramName": "klaviyoReturnParameter",
        "paramValue": "items",
        "type": "EQUALS"
      },
      {
        "paramName": "klaviyoReturnParameter",
        "paramValue": "item",
        "type": "EQUALS"
      },
      {
        "paramName": "tiktokReturnParameter",
        "paramValue": "contents",
        "type": "EQUALS"
      },
      {
        "paramName": "rakutenReturnParameter",
        "paramValue": "items",
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
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

const createRegex = require('createRegex');
const getEventData = require('getEventData');
const getType = require('getType');
const JSON = require('JSON');
const makeNumber = require('makeNumber');
const makeString = require('makeString');
const makeTableMap = require('makeTableMap');
const Math = require('Math');
const Object = require('Object');
const testRegex = require('testRegex');

/*
========================================================================
========================================================================
*/

const useGa4Array = data.getGa4Items;
const inputArray = useGa4Array ? getEventData('items') : data.inputArray;
const keyId = useGa4Array ? 'item_id' : data.keyId;
const keyBrand = useGa4Array ? 'item_brand' : data.keyBrand;
const keyPrice = useGa4Array ? 'price' : data.keyPrice;
const keyQuantity = useGa4Array ? 'quantity' : data.keyQuantity;
const keyName = useGa4Array ? 'item_name' : data.keyName;
const keyImg = data.keyImg;
let keyCategory = getType(data.keyCategory) === 'string' ? data.keyCategory.split(',').map((category) => category.trim()) : data.keyCategory;
let lastCategory = getType(keyCategory) === 'array' && keyCategory.length ? keyCategory[keyCategory.length - 1] : undefined;
const optionalData = data.addOptionalData ? makeTableMap(data.optionalData, 'optionalParamInputKey', 'optionalParamOutputKey') : undefined;
const categoryRegex = createRegex('item_category');

/*
========================================================================
                         MAIN EXECUTION
========================================================================
*/

if (getType(inputArray) !== 'array' || inputArray.length === 0) return;

const task = {
  meta: {
    content_name: getName,
    content_ids: getIdsArray,
    value: getTotalValue,
    num_items: getNumberOfItems,
    contents: getMetaContents
  },
  ga4: {
    value: getTotalValue,
    items: getGA4Items
  },
  tiktok: {
    contents: getTikTokContents,
    value: getTotalValue,
    content_ids: getIdsArray,
    num_items: getNumberOfItems
  },
  twitter: {
    contents: getTwitterContents,
    value: getTotalValue,
    number_items: getNumberOfItems
  },
  microsoft: {
    items: getMicrosoftItems,
    value: getTotalValue,
    item_ids: getIdsArray
  },
  pinterest: {
    contents: getPinterestContents,
    value: getTotalValue,
    num_items: getNumberOfItems,
    content_ids: getIdsArray
  },
  snapchat: {
    contents: getMetaContents,
    value: getTotalValue,
    content_ids: getIdsArray,
    num_items: getNumberOfItems,
    content_name: getName
  },
  reddit: {
    products: getRedditProducts,
    value: getTotalValue,
    item_count: getNumberOfItems
  },
  googleAdsOffline: {
    items: getGoogleAdsItems,
    value: getTotalValue
  },
  rakuten: {
    items: getRakutenLineitems
  },
  klaviyo: {
    items: getKlaviyoItems,
    item: getKlaviyoItems,
    value: getTotalValue
  }
};

const platform = data.platform;
const returnParameter = data[platform + 'ReturnParameter'];
const returnValue = task[platform][returnParameter](inputArray);
return data.jsonOutput ? JSON.stringify(returnValue) : returnValue;

/*
========================================================================
                               HELPERS
========================================================================
*/

function toFixed2(input) {
  return Math.round(makeNumber(input) * 100) / 100;
}

function getTotalValue(inputArray) {
  return toFixed2(inputArray.reduce((acc, curr) => acc + makeNumber(curr[keyPrice]) * makeNumber(curr[keyQuantity]), 0));
}

function getIdsArray(inputArray) {
  return inputArray.map((item) => item[keyId]);
}

function getName(inputArray) {
  if (inputArray.length !== 1) return undefined;
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
  } else if (keyCategory.length > 0) {
    keyCategory.forEach((category, index) => {
      index = index === 0 ? '' : index + 1;
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
      price: item[keyPrice],
      quantity: item[keyQuantity],
      item_name: item[keyName],
      item_brand: item[keyBrand]
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
    if (lastCategory && getType(item[lastCategory]) === 'array') {
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
    if (lastCategory && getType(item[lastCategory]) === 'array') {
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
    if (lastCategory && getType(item[lastCategory]) === 'array') {
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
    if (lastCategory && getType(item[lastCategory]) === 'array') {
      lastCategory = item[lastCategory];
      lastCategory = lastCategory[lastCategory.length - 1];
    }
    return {
      id: makeString(item[keyId]),
      item_price: item[keyPrice],
      quantity: item[keyQuantity],
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

  if (data.klaviyoReturnParameter === 'item') {
    return data.encloseInArray ? formattedItems : formattedItems[0];
  }
  return formattedItems;
}


___SERVER_PERMISSIONS___

[
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
setup: ''


___NOTES___

Created on 29/10/2025, 10:16:51

2026/04/27 - Change Notes:
 - Fix Reddit output item parameters and related types

