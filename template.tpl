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
  "description": "Maps an array of products to the format each supported platform\u0027s API expects.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
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
        "displayValue": "TikTok Events API"
      },
      {
        "value": "twitter",
        "displayValue": "X (Twitter) Conversion API"
      },
      {
        "value": "microsoft",
        "displayValue": "Microsoft Advertising UET Conversion API"
      },
      {
        "value": "klaviyo",
        "displayValue": "Klaviyo Events API"
      },
      {
        "value": "snapchat",
        "displayValue": "Snapchat Conversions API"
      },
      {
        "value": "googleAdsOffline",
        "displayValue": "Google Ads Offline Conversions"
      },
      {
        "value": "pinterest",
        "displayValue": "Pinterest Conversions API"
      },
      {
        "value": "rakuten",
        "displayValue": "Rakuten Advertising"
      },
      {
        "value": "reddit",
        "displayValue": "Reddit Conversions API"
      },
      {
        "value": "openAI",
        "displayValue": "OpenAI (ChatGPT Ads) Conversions API"
      },
      {
        "value": "generic",
        "displayValue": "Generic (Item ID Builder)"
      }
    ],
    "simpleValueType": true,
    "subParams": [],
    "alwaysInSummary": false
  },
  {
    "type": "GROUP",
    "name": "return_parameters_group",
    "displayName": "Parameter to return",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "RADIO",
        "name": "metaReturnParameter",
        "displayName": "",
        "radioItems": [
          {
            "value": "content_ids",
            "displayValue": "content_ids [ ]",
            "help": "Returns an array of Product IDs. Use the \u003ci\u003econtent_type\u003c/i\u003e that matches the IDs this variable returns. See the \u003ca href\u003d\"https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/custom-data\"\u003eofficial documentation\u003c/a\u003e for details.",
            "subParams": []
          },
          {
            "value": "contents",
            "displayValue": "contents [ { } ]",
            "help": "Returns a list of product objects, as described in the \u003ca href\u003d\"https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/custom-data\"\u003eofficial documentation\u003c/a\u003e as of October 2025."
          },
          {
            "value": "value",
            "displayValue": "value",
            "help": "Returns the total value of the products in the Input Array, as described in the \u003ca href\u003d\"https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/custom-data\"\u003eofficial documentation\u003c/a\u003e as of October 2025."
          },
          {
            "value": "content_name",
            "displayValue": "content_name",
            "help": "Returns the product name. It returns a value only when the Input Array has exactly one object. See the \u003ca href\u003d\"https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/custom-data\"\u003eofficial documentation\u003c/a\u003e as of October 2025."
          },
          {
            "value": "num_items",
            "displayValue": "num_items",
            "help": "Returns the number of items in the Input Array, as described in the \u003ca href\u003d\"https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/custom-data\"\u003eofficial documentation\u003c/a\u003e as of October 2025."
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
            "help": "Returns the total value of the products in the Input Array. See the \u003ca href\u003d\"https://developers.google.com/analytics/devguides/collection/protocol/ga4/reference/events\"\u003eofficial documentation\u003c/a\u003e for details.",
            "subParams": []
          },
          {
            "value": "items",
            "displayValue": "items [ { } ]",
            "help": "Returns a list of product objects, as described in the \u003ca href\u003d\"https://developers.google.com/analytics/devguides/collection/protocol/ga4/reference/events#add_to_cart_item\"\u003eofficial documentation\u003c/a\u003e as of October 2025.\u003cbr/\u003eTo add item parameters that are not in \u003cstrong\u003eInput Array Keys\u003c/strong\u003e, use the \u003cstrong\u003eAdditional/Optional Parameters\u003c/strong\u003e section."
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
            "help": "Returns the total value of the products in the Input Array. See the \u003ca href\u003d\"https://developers.google.com/google-ads/api/reference/rpc/v22/ConversionUploadService/UploadClickConversions?transport\u003drest\"\u003eofficial documentation\u003c/a\u003e for details.",
            "subParams": []
          },
          {
            "value": "items",
            "displayValue": "items [ { } ]",
            "help": "Returns a list of product objects, as described in the \u003ca href\u003d\"https://developers.google.com/google-ads/api/reference/rpc/v22/ConversionUploadService/UploadClickConversions?transport\u003drest\"\u003eofficial documentation\u003c/a\u003e as of October 2025.\u003cbr/\u003eTo add item parameters that are not in \u003cstrong\u003eInput Array Keys\u003c/strong\u003e, use the \u003cstrong\u003eAdditional/Optional Parameters\u003c/strong\u003e section."
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
            "displayValue": "contents [ { } ]",
            "help": "Returns the required \u003cstrong\u003econtents\u003c/strong\u003e parameter. See the \u003ca href\u003d\"https://business-api.tiktok.com/portal/docs?rid\u003doyn7lhbo6ar\u0026id\u003d1771100799076354\"\u003eofficial documentation\u003c/a\u003e for details.",
            "subParams": []
          },
          {
            "value": "value",
            "displayValue": "value",
            "help": "Returns the \u003cstrong\u003etotal value\u003c/strong\u003e of the products in the Input Array, without discounts. See the \u003ca href\u003d\"https://business-api.tiktok.com/portal/docs?rid\u003doyn7lhbo6ar\u0026id\u003d1771100799076354\"\u003eofficial documentation\u003c/a\u003e for details."
          },
          {
            "value": "num_items",
            "displayValue": "num_items",
            "help": "Returns the \u003cstrong\u003enumber of items\u003c/strong\u003e in the Input Array. See the \u003ca href\u003d\"https://business-api.tiktok.com/portal/docs?rid\u003doyn7lhbo6ar\u0026id\u003d1771100799076354\"\u003eofficial documentation\u003c/a\u003e for details."
          },
          {
            "value": "content_ids",
            "displayValue": "content_ids [ ]",
            "help": "Returns an array of \u003cstrong\u003eProduct IDs\u003c/strong\u003e. See the \u003ca href\u003d\"https://business-api.tiktok.com/portal/docs?rid\u003doyn7lhbo6ar\u0026id\u003d1771100799076354\"\u003eofficial documentation\u003c/a\u003e for details."
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
            "displayValue": "contents [ { } ]",
            "help": "Returns the required \u003cstrong\u003econtents\u003c/strong\u003e parameter. See the \u003ca href\u003d\"https://developer.x.com/en/docs/x-ads-api/measurement/web-conversions/api-reference/conversions\"\u003eofficial documentation\u003c/a\u003e for details.",
            "subParams": []
          },
          {
            "value": "value",
            "displayValue": "value",
            "help": "Returns the \u003cstrong\u003etotal value\u003c/strong\u003e of the products in the Input Array, without discounts. See the \u003ca href\u003d\"https://developer.x.com/en/docs/x-ads-api/measurement/web-conversions/api-reference/conversions\"\u003eofficial documentation\u003c/a\u003e for details."
          },
          {
            "value": "number_items",
            "displayValue": "number_items",
            "help": "Returns the \u003cstrong\u003enumber of items\u003c/strong\u003e in the Input Array. See the \u003ca href\u003d\"https://developer.x.com/en/docs/x-ads-api/measurement/web-conversions/api-reference/conversions\"\u003eofficial documentation\u003c/a\u003e for details."
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
            "displayValue": "items [ { } ]",
            "help": "Returns the required \u003cstrong\u003eitems\u003c/strong\u003e parameter. See the \u003ca href\u003d\"https://learn.microsoft.com/en-us/advertising/guides/uet-conversion-api-integration?view\u003dbingads-13\"\u003eofficial documentation\u003c/a\u003e for details.",
            "subParams": []
          },
          {
            "value": "value",
            "displayValue": "value",
            "help": "Returns the \u003cstrong\u003etotal value\u003c/strong\u003e of the products in the Input Array, without discounts. See the \u003ca href\u003d\"https://learn.microsoft.com/en-us/advertising/guides/uet-conversion-api-integration?view\u003dbingads-13\"\u003eofficial documentation\u003c/a\u003e for details."
          },
          {
            "value": "item_ids",
            "displayValue": "itemIds [ ]",
            "help": "Returns an array of \u003cstrong\u003eProduct IDs\u003c/strong\u003e. See the \u003ca href\u003d\"https://learn.microsoft.com/en-us/advertising/guides/uet-conversion-api-integration?view\u003dbingads-13\"\u003eofficial documentation\u003c/a\u003e for details."
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
            "displayValue": "contents [ { } ]",
            "help": "Returns the required \u003cstrong\u003econtents\u003c/strong\u003e parameter. See the \u003ca href\u003d\"https://developers.pinterest.com/docs/api/v5/events-create/\"\u003eofficial documentation\u003c/a\u003e for details.",
            "subParams": []
          },
          {
            "value": "value",
            "displayValue": "value",
            "help": "Returns the \u003cstrong\u003etotal value\u003c/strong\u003e of the products in the Input Array, without discounts. See the \u003ca href\u003d\"https://developers.pinterest.com/docs/api/v5/events-create/\"\u003eofficial documentation\u003c/a\u003e for details."
          },
          {
            "value": "num_items",
            "displayValue": "num_items",
            "help": "Returns the \u003cstrong\u003enumber of items\u003c/strong\u003e in the Input Array. See the \u003ca href\u003d\"https://developers.pinterest.com/docs/api/v5/events-create/\"\u003eofficial documentation\u003c/a\u003e for details."
          },
          {
            "value": "content_ids",
            "displayValue": "content_ids [ ]",
            "help": "Returns an array of \u003cstrong\u003eProduct IDs\u003c/strong\u003e. See the \u003ca href\u003d\"https://developers.pinterest.com/docs/api/v5/events-create/\"\u003eofficial documentation\u003c/a\u003e for details."
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
            "displayValue": "content_ids [ ]",
            "help": "Returns an array of Product IDs. Use the \u003ci\u003econtent_type\u003c/i\u003e that matches the IDs this variable returns. See the \u003ca href\u003d\"https://developers.snap.com/api/marketing-api/Conversions-API/Parameters\"\u003eofficial documentation\u003c/a\u003e for details.",
            "subParams": []
          },
          {
            "value": "contents",
            "displayValue": "contents [ { } ]",
            "help": "Returns a list of product objects, as described in the \u003ca href\u003d\"https://developers.snap.com/api/marketing-api/Conversions-API/Parameters\"\u003eofficial documentation\u003c/a\u003e as of October 2025."
          },
          {
            "value": "value",
            "displayValue": "value",
            "help": "Returns the total value of the products in the Input Array, as described in the \u003ca href\u003d\"https://developers.snap.com/api/marketing-api/Conversions-API/Parameters\"\u003eofficial documentation\u003c/a\u003e as of October 2025."
          },
          {
            "value": "content_name",
            "displayValue": "content_name",
            "help": "Returns the product name. It returns a value only when the Input Array has exactly one object. See the \u003ca href\u003d\"https://developers.snap.com/api/marketing-api/Conversions-API/Parameters\"\u003eofficial documentation\u003c/a\u003e as of October 2025."
          },
          {
            "value": "num_items",
            "displayValue": "num_items",
            "help": "Returns the number of items in the Input Array, as described in the \u003ca href\u003d\"https://developers.snap.com/api/marketing-api/Conversions-API/Parameters\"\u003eofficial documentation\u003c/a\u003e as of October 2025."
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
            "displayValue": "products [ { } ]",
            "help": "Returns a list of product objects, as described in the \u003ca href\u003d\"https://ads-api.reddit.com/docs/v3/operations/Post%20Conversion%20Events\"\u003eofficial documentation\u003c/a\u003e as of October 2025."
          },
          {
            "value": "value",
            "displayValue": "value",
            "help": "Returns the total value of the products in the Input Array, as described in the \u003ca href\u003d\"https://ads-api.reddit.com/docs/v3/operations/Post%20Conversion%20Events\"\u003eofficial documentation\u003c/a\u003e as of October 2025."
          },
          {
            "value": "item_count",
            "displayValue": "item_count",
            "help": "Returns the number of items in the Input Array, as described in the \u003ca href\u003d\"https://ads-api.reddit.com/docs/v3/operations/Post%20Conversion%20Events\"\u003eofficial documentation\u003c/a\u003e as of October 2025."
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
            "displayValue": "items [ { } ]",
            "help": "Returns a list of product objects, as described in the \u003ca href\u003d\"https://go.rakutenadvertising.com/hubfs/Rakuten-Affiliate-for-Server-Side-Google-Tag-Manager.pdf\"\u003eofficial documentation\u003c/a\u003e as of October 2025."
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
            "displayValue": "items [ { } ]",
            "help": "Returns a list of product objects, as described in the \u003ca href\u003d\"https://developers.klaviyo.com/en/docs/guide_to_integrating_a_platform_without_a_pre_built_klaviyo_integration#active-on-site-tracking-snippet\"\u003eofficial documentation\u003c/a\u003e as of October 2025."
          },
          {
            "value": "item",
            "displayValue": "item [ { } ]",
            "help": "Returns the first product object, as described in the \u003ca href\u003d\"https://developers.klaviyo.com/en/docs/guide_to_integrating_a_platform_without_a_pre_built_klaviyo_integration#active-on-site-tracking-snippet\"\u003eofficial documentation\u003c/a\u003e as of October 2025.",
            "subParams": [
              {
                "type": "CHECKBOX",
                "name": "encloseInArray",
                "checkboxText": "Wrap the output in an array",
                "simpleValueType": true,
                "help": "Returns every product object in an array instead of the first object only."
              }
            ]
          },
          {
            "value": "value",
            "displayValue": "value",
            "help": "Returns the total event value, as described in the \u003ca href\u003d\"https://developers.klaviyo.com/en/docs/guide_to_integrating_a_platform_without_a_pre_built_klaviyo_integration#active-on-site-tracking-snippet\"\u003eofficial documentation\u003c/a\u003e as of October 2025."
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
      },
      {
        "type": "RADIO",
        "name": "openAIReturnParameter",
        "displayName": "",
        "radioItems": [
          {
            "value": "contents",
            "displayValue": "contents [ { } ]",
            "help": "Returns a list of product objects, as described in the \u003ca href\u003d\"https://developers.openai.com/ads/supported-events#contents\"\u003eofficial documentation\u003c/a\u003e as of September 2026.",
            "subParams": [
              {
                "type": "SELECT",
                "name": "contentTypeOpenAI",
                "displayName": "content_type parameter",
                "macrosInSelect": false,
                "selectItems": [
                  {
                    "value": "product",
                    "displayValue": "product"
                  },
                  {
                    "value": "plan",
                    "displayValue": "plan"
                  },
                  {
                    "value": "page",
                    "displayValue": "page"
                  }
                ],
                "simpleValueType": true,
                "help": "The \u003ci\u003econtent_type\u003c/i\u003e of each product object, as described in the \u003ca href\u003d\"https://developers.openai.com/ads/supported-events\"\u003eofficial documentation\u003c/a\u003e as of September 2026."
              },
              {
                "type": "TEXT",
                "name": "openAIKeyGroupId",
                "displayName": "Group ID Key",
                "simpleValueType": true,
                "help": "Optional. Input Array key of the item\u0027s \u003cstrong\u003egroup or parent ID\u003c/strong\u003e, sent as \u003ci\u003econtents[].group_id\u003c/i\u003e.",
                "valueHint": "group_id"
              }
            ]
          },
          {
            "value": "amount",
            "displayValue": "amount",
            "help": "Returns the total event value, as described in the \u003ca href\u003d\"https://developers.openai.com/ads/supported-events#contents\"\u003eofficial documentation\u003c/a\u003e as of September 2026."
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "platform",
            "paramValue": "openAI",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "RADIO",
        "name": "genericReturnParameter",
        "displayName": "",
        "radioItems": [
          {
            "value": "items",
            "displayValue": "items [ { } ]",
            "help": "Returns the Input Array items with all their keys, with the Product ID Key replaced by the rebuilt Product ID. Use it, for example, in a Transformation to overwrite the \u003ci\u003eitems\u003c/i\u003e Event Data parameter for every tag."
          },
          {
            "value": "ids",
            "displayValue": "ids [ ]",
            "help": "Returns a flat array of the rebuilt Product IDs, e.g. for Meta \u003ci\u003econtent_ids\u003c/i\u003e."
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "platform",
            "paramValue": "generic",
            "type": "EQUALS"
          }
        ],
        "defaultValue": "items"
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
        "help": "An array of product objects [{}].",
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
        "checkboxText": "Use GA4 items from Event Data",
        "simpleValueType": true,
        "help": "Reads the products from the \u003ci\u003eitems\u003c/i\u003e Event Data parameter instead of the Input Array, with the standard GA4 item keys."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "keys_group",
    "displayName": "Input Array Keys",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "LABEL",
        "name": "ga4KeysNote",
        "displayName": "GA4 item keys from Event Data are used automatically: item_id, item_name, price, quantity, item_brand and item_category to item_category5.",
        "enablingConditions": [
          {
            "paramName": "getGa4Items",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "keyId_group",
        "subParams": [
          {
            "type": "TEXT",
            "name": "keyId",
            "displayName": "Product ID Key",
            "simpleValueType": true,
            "help": "Input Array key of the item\u0027s \u003cstrong\u003eunique identifier\u003c/strong\u003e.",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "valueHint": "item_id",
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
            "name": "useAdditionalKeyId",
            "checkboxText": "Use an additional Product ID Key",
            "simpleValueType": true,
            "subParams": [
              {
                "type": "TEXT",
                "name": "keyIdAdditional",
                "displayName": "Additional Product ID Key",
                "simpleValueType": true,
                "valueValidators": [
                  {
                    "type": "NON_EMPTY"
                  }
                ],
                "enablingConditions": [
                  {
                    "paramName": "useAdditionalKeyId",
                    "paramValue": true,
                    "type": "EQUALS"
                  }
                ],
                "valueHint": "productId"
              }
            ],
            "help": "When enabled, the Product ID is read from this key first. If the item has no value there, the Product ID Key above is used."
          },
          {
            "type": "CHECKBOX",
            "name": "formatIdInShopifyFormat",
            "checkboxText": "Format Product ID in Shopify Product Feed format",
            "simpleValueType": true,
            "help": "When enabled, the Product ID is formatted as:\u003cbr/\u003e\u003ci\u003eshopify_{Market Code}_{Product ID}_{Variant ID}\u003c/i\u003e\u003cbr/\u003e\u003cbr/\u003eThe value is formatted only when both the Product ID and the Product Variant ID are found. Otherwise, the Product ID is returned unchanged.\u003cbr/\u003e\u003cbr/\u003eFor multi-market stores or other formats, use the \u003cstrong\u003eItem ID Builder\u003c/strong\u003e section instead.",
            "subParams": [
              {
                "type": "TEXT",
                "name": "shopifyKeyVariant",
                "displayName": "Product Variant ID Key",
                "simpleValueType": true,
                "valueValidators": [
                  {
                    "type": "NON_EMPTY"
                  }
                ],
                "enablingConditions": [
                  {
                    "paramName": "formatIdInShopifyFormat",
                    "paramValue": true,
                    "type": "EQUALS"
                  }
                ],
                "valueHint": "variant_id"
              },
              {
                "type": "TEXT",
                "name": "shopifyMarketCode",
                "displayName": "Shopify Market Code",
                "simpleValueType": true,
                "valueHint": "US",
                "help": "ISO country code of the Shopify market, e.g. BR, GB or US. Use ZZ if your feed comes from the new Merchant API.",
                "enablingConditions": [
                  {
                    "paramName": "formatIdInShopifyFormat",
                    "paramValue": true,
                    "type": "EQUALS"
                  }
                ],
                "valueValidators": [
                  {
                    "type": "NON_EMPTY"
                  }
                ]
              }
            ],
            "enablingConditions": [
              {
                "paramName": "buildIdFromPattern",
                "paramValue": true,
                "type": "NOT_EQUALS"
              }
            ]
          }
        ],
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
            "paramName": "openAIReturnParameter",
            "paramValue": "contents",
            "type": "EQUALS"
          },
          {
            "paramName": "genericReturnParameter",
            "paramValue": "items",
            "type": "EQUALS"
          },
          {
            "paramName": "genericReturnParameter",
            "paramValue": "ids",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "custom_keys_group",
        "groupStyle": "NO_ZIPPY",
        "subParams": [
          {
            "type": "TEXT",
            "name": "keyBrand",
            "displayName": "Product Brand Key",
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
            "help": "Input Array key of the item\u0027s \u003cstrong\u003ebrand\u003c/strong\u003e.",
            "valueValidators": [],
            "valueHint": "item_brand"
          },
          {
            "type": "TEXT",
            "name": "keyPrice",
            "displayName": "Product Price Key",
            "simpleValueType": true,
            "help": "Input Array key of the item\u0027s \u003cstrong\u003eunit price\u003c/strong\u003e.",
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
              },
              {
                "paramName": "openAIReturnParameter",
                "paramValue": "contents",
                "type": "EQUALS"
              },
              {
                "paramName": "openAIReturnParameter",
                "paramValue": "amount",
                "type": "EQUALS"
              }
            ],
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "valueHint": "price"
          },
          {
            "type": "TEXT",
            "name": "keyQuantity",
            "displayName": "Product Quantity Key",
            "simpleValueType": true,
            "help": "Input Array key of the item\u0027s \u003cstrong\u003equantity\u003c/strong\u003e.",
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
              },
              {
                "paramName": "openAIReturnParameter",
                "paramValue": "contents",
                "type": "EQUALS"
              },
              {
                "paramName": "openAIReturnParameter",
                "paramValue": "amount",
                "type": "EQUALS"
              }
            ],
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "valueHint": "quantity"
          },
          {
            "type": "TEXT",
            "name": "keyName",
            "displayName": "Product Name Key",
            "simpleValueType": true,
            "help": "Input Array key of the item\u0027s \u003cstrong\u003ename\u003c/strong\u003e.",
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
              },
              {
                "paramName": "openAIReturnParameter",
                "paramValue": "contents",
                "type": "EQUALS"
              }
            ],
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "valueHint": "item_name"
          },
          {
            "type": "TEXT",
            "name": "keyCurrency",
            "displayName": "Currency Key",
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "openAIReturnParameter",
                "paramValue": "contents",
                "type": "EQUALS"
              },
              {
                "paramName": "openAIReturnParameter",
                "paramValue": "amount",
                "type": "EQUALS"
              }
            ],
            "help": "Key of the currency. It is read from the first item and, if not found there, from Event Data.",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "valueHint": "currency"
          },
          {
            "type": "GROUP",
            "name": "category_group",
            "subParams": [
              {
                "type": "TEXT",
                "name": "keyCategory",
                "displayName": "Product Category Key",
                "simpleValueType": true,
                "help": "Input Array key of the item\u0027s \u003cstrong\u003ecategories\u003c/strong\u003e. It accepts one key, several keys or an array of keys. List several keys comma-separated, from the broadest category on the left to the narrowest on the right.\u003cbr/\u003e\u003cb\u003eSeveral keys:\u003c/b\u003e category_1, category_2, category_3\u003cbr/\u003e\u003cb\u003eArray of keys:\u003c/b\u003e [category_1, category_2, category_3]",
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
                "checkboxText": "Build Rakuten Category Tree",
                "simpleValueType": true,
                "enablingConditions": [
                  {
                    "paramName": "platform",
                    "paramValue": "rakuten",
                    "type": "EQUALS"
                  }
                ],
                "help": "When the field above has several categories, builds the category tree as described in the \u003ca href\u003d\"https://go.rakutenadvertising.com/hubfs/Rakuten-Affiliate-for-Server-Side-Google-Tag-Manager.pdf\"\u003eofficial documentation\u003c/a\u003e."
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
        "type": "TEXT",
        "name": "keyImg",
        "displayName": "Product Image URL Key",
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
        ],
        "valueHint": "image_url",
        "help": "Input Array key of the item\u0027s \u003cstrong\u003eimage URL\u003c/strong\u003e."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "id_builder_group",
    "displayName": "Item ID Builder",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "buildIdFromPattern",
        "checkboxText": "Build Product ID from a pattern",
        "simpleValueType": true,
        "help": "When enabled, the Product ID is rebuilt from the \u003cstrong\u003eID Pattern\u003c/strong\u003e below, so it matches the IDs in your Google Merchant Center, Meta or TikTok catalog.\u003cbr/\u003e\u003cbr/\u003eExample: \u003ci\u003eshopify_{country}_{item_id}_{variant}\u003c/i\u003e returns \u003ci\u003eshopify_SE_8123456789_44556677\u003c/i\u003e.\u003cbr/\u003e\u003cbr/\u003eTakes precedence over the Shopify Product Feed format option.",
        "subParams": [
          {
            "type": "TEXT",
            "name": "idPattern",
            "displayName": "ID Pattern",
            "simpleValueType": true,
            "valueHint": "shopify_{country}_{item_id}_{variant}",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "buildIdFromPattern",
                "paramValue": true,
                "type": "EQUALS"
              }
            ],
            "help": "Text with tokens in curly braces. Each \u003ci\u003e{token}\u003c/i\u003e is replaced, in this order, by:\u003cbr/\u003e1. \u003cstrong\u003e{id}\u003c/strong\u003e: the Product ID read with the Product ID Key (or the Additional Product ID Key, if enabled).\u003cbr/\u003e2. The Hostname Lookup value, if the token matches its Token Name.\u003cbr/\u003e3. A row with the same name in \u003cstrong\u003ePattern Variables\u003c/strong\u003e.\u003cbr/\u003e4. Otherwise, the item key with the same name, e.g. \u003ci\u003e{item_id}\u003c/i\u003e or \u003ci\u003e{item_variant}\u003c/i\u003e. Nested keys use dots, e.g. \u003ci\u003e{variant.id}\u003c/i\u003e.\u003cbr/\u003e\u003cbr/\u003eText outside curly braces is kept as written. A pattern with no token is ignored, as if a token were missing."
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "idPatternVariables",
            "displayName": "Pattern Variables",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Token Name",
                "name": "name",
                "type": "TEXT",
                "isUnique": true,
                "valueHint": "country",
                "valueValidators": [
                  {
                    "type": "NON_EMPTY"
                  },
                  {
                    "type": "REGEX",
                    "args": [
                      "^(.?|.{3,}|[^i].|i[^d])$"
                    ],
                    "errorMessage": "The Token Name id is reserved for the original Product ID."
                  }
                ]
              },
              {
                "defaultValue": "value",
                "displayName": "Source",
                "name": "source",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "value",
                    "displayValue": "Value (text or variable)"
                  },
                  {
                    "value": "itemKey",
                    "displayValue": "Item key"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT",
                "valueHint": "SE"
              }
            ],
            "newRowButtonText": "Add variable",
            "enablingConditions": [
              {
                "paramName": "buildIdFromPattern",
                "paramValue": true,
                "type": "EQUALS"
              }
            ],
            "help": "Defines tokens used in the ID Pattern.\u003cbr/\u003e\u003cstrong\u003eValue\u003c/strong\u003e: the token is replaced by the text or GTM variable in the Value column, e.g. \u003ci\u003ecountry\u003c/i\u003e \u003d \u003ci\u003eSE\u003c/i\u003e or \u003ci\u003e{{Market}}\u003c/i\u003e.\u003cbr/\u003e\u003cstrong\u003eItem key\u003c/strong\u003e: the token is replaced by that key of each item, e.g. \u003ci\u003evariant\u003c/i\u003e \u003d \u003ci\u003eitem_variant\u003c/i\u003e.\u003cbr/\u003eThe Token Name \u003ci\u003eid\u003c/i\u003e is reserved for the original Product ID."
          },
          {
            "type": "CHECKBOX",
            "name": "useHostnameLookup",
            "checkboxText": "Fill a token from a hostname lookup table",
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "buildIdFromPattern",
                "paramValue": true,
                "type": "EQUALS"
              }
            ],
            "help": "Use it for multi-market stores where each domain has its own feed, e.g. \u003ci\u003eshop.no\u003c/i\u003e \u003d \u003ci\u003eNO\u003c/i\u003e, \u003ci\u003eshop.se\u003c/i\u003e \u003d \u003ci\u003eSE\u003c/i\u003e. Hostnames are compared in lower case and without a leading \u003ci\u003ewww.\u003c/i\u003e.",
            "subParams": [
              {
                "type": "TEXT",
                "name": "hostnameLookupToken",
                "displayName": "Token Name",
                "simpleValueType": true,
                "defaultValue": "country",
                "valueValidators": [
                  {
                    "type": "NON_EMPTY"
                  }
                ],
                "enablingConditions": [
                  {
                    "paramName": "useHostnameLookup",
                    "paramValue": true,
                    "type": "EQUALS"
                  }
                ],
                "help": "The token this lookup fills, e.g. \u003ci\u003ecountry\u003c/i\u003e for \u003ci\u003e{country}\u003c/i\u003e."
              },
              {
                "type": "SIMPLE_TABLE",
                "name": "hostnameLookupTable",
                "displayName": "Hostname Lookup Table",
                "simpleTableColumns": [
                  {
                    "defaultValue": "",
                    "displayName": "Hostname",
                    "name": "hostname",
                    "type": "TEXT",
                    "isUnique": true,
                    "valueHint": "shop.no",
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY"
                      }
                    ]
                  },
                  {
                    "defaultValue": "",
                    "displayName": "Token Value",
                    "name": "tokenValue",
                    "type": "TEXT",
                    "valueHint": "NO"
                  }
                ],
                "newRowButtonText": "Add hostname",
                "enablingConditions": [
                  {
                    "paramName": "useHostnameLookup",
                    "paramValue": true,
                    "type": "EQUALS"
                  }
                ]
              },
              {
                "type": "TEXT",
                "name": "hostnameLookupDefault",
                "displayName": "Default Value",
                "simpleValueType": true,
                "help": "Used when no hostname matches, or when the matching row has an empty Token Value. If empty, the token counts as missing.",
                "enablingConditions": [
                  {
                    "paramName": "useHostnameLookup",
                    "paramValue": true,
                    "type": "EQUALS"
                  }
                ]
              },
              {
                "type": "TEXT",
                "name": "hostnameLookupSource",
                "displayName": "Hostname (optional)",
                "simpleValueType": true,
                "help": "Leave empty to use the hostname of the \u003ci\u003epage_location\u003c/i\u003e Event Data parameter. Set a hostname or URL variable to look up another value.",
                "enablingConditions": [
                  {
                    "paramName": "useHostnameLookup",
                    "paramValue": true,
                    "type": "EQUALS"
                  }
                ]
              }
            ]
          },
          {
            "type": "CHECKBOX",
            "name": "stripShopifyGid",
            "checkboxText": "Strip Shopify GID prefixes",
            "simpleValueType": true,
            "defaultValue": true,
            "enablingConditions": [
              {
                "paramName": "buildIdFromPattern",
                "paramValue": true,
                "type": "EQUALS"
              }
            ],
            "help": "Token values like \u003ci\u003egid://shopify/ProductVariant/44556677\u003c/i\u003e become \u003ci\u003e44556677\u003c/i\u003e. The same applies to an original Product ID kept because a token is missing."
          },
          {
            "type": "RADIO",
            "name": "onMissingToken",
            "displayName": "If a token is missing or empty",
            "radioItems": [
              {
                "value": "original",
                "displayValue": "Keep the original Product ID"
              },
              {
                "value": "fallback",
                "displayValue": "Use a fallback pattern",
                "subParams": [
                  {
                    "type": "TEXT",
                    "name": "idFallbackPattern",
                    "displayName": "Fallback ID Pattern",
                    "simpleValueType": true,
                    "valueHint": "shopify_{country}_{item_id}",
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY"
                      }
                    ],
                    "help": "Same syntax as the ID Pattern. If a token is missing here too, the original Product ID is kept."
                  }
                ]
              }
            ],
            "simpleValueType": true,
            "defaultValue": "original",
            "enablingConditions": [
              {
                "paramName": "buildIdFromPattern",
                "paramValue": true,
                "type": "EQUALS"
              }
            ]
          }
        ]
      }
    ],
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
        "paramName": "openAIReturnParameter",
        "paramValue": "contents",
        "type": "EQUALS"
      },
      {
        "paramName": "genericReturnParameter",
        "paramValue": "items",
        "type": "EQUALS"
      },
      {
        "paramName": "genericReturnParameter",
        "paramValue": "ids",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "optional_param_group",
    "displayName": "Additional/Optional Parameters",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "addOptionalData",
        "checkboxText": "Add item-level optional parameters",
        "simpleValueType": true
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "optionalData",
        "displayName": "Parameters List",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Input Array Key",
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
            "displayName": "Output Key",
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
        "help": "Item keys to add to each output item. Works only when the Input Array is a non-empty array of item objects.",
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
        "checkboxText": "Return stringified JSON",
        "simpleValueType": true,
        "help": "Returns the output as a JSON string (\u003cstrong\u003eJSON.stringify\u003c/strong\u003e)."
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
const makeInteger = require('makeInteger');
const makeString = require('makeString');
const makeTableMap = require('makeTableMap');
const Math = require('Math');
const Object = require('Object');
const parseUrl = require('parseUrl');
const testRegex = require('testRegex');

/*
========================================================================
========================================================================
*/

const useGa4Array = data.getGa4Items;
const inputArray = useGa4Array ? getEventData('items') : data.inputArray;
const keyId = useGa4Array ? 'item_id' : data.keyId;
const keyBrand = useGa4Array ? 'item_brand' : data.keyBrand;
const keyCurrency = useGa4Array ? 'currency' : data.keyCurrency || 'currency';
const keyPrice = useGa4Array ? 'price' : data.keyPrice;
const keyQuantity = useGa4Array ? 'quantity' : data.keyQuantity;
const keyName = useGa4Array ? 'item_name' : data.keyName;
const keyImg = data.keyImg;
let keyCategory =
  getType(data.keyCategory) === 'string'
    ? data.keyCategory.split(',').map((category) => category.trim())
    : data.keyCategory;
let lastCategory =
  getType(keyCategory) === 'array' && keyCategory.length
    ? keyCategory[keyCategory.length - 1]
    : undefined;
const optionalData = data.addOptionalData
  ? makeTableMap(data.optionalData, 'optionalParamInputKey', 'optionalParamOutputKey')
  : undefined;
const categoryRegex = createRegex('item_category');
const idBuilder = data.buildIdFromPattern ? createIdBuilder() : undefined;
const hasIdOptions = !!(idBuilder || data.useAdditionalKeyId || data.formatIdInShopifyFormat);

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
  },
  openAI: {
    contents: getOpenAIContents,
    amount: getOpenAIAmount
  },
  generic: {
    items: getGenericItems,
    ids: getIdsArray
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

function toFixed2(value) {
  if (!value) return value;
  return Math.round(makeNumber(value) * 100) / 100;
}

function getTotalValue(inputArray) {
  return toFixed2(
    inputArray.reduce(
      (acc, curr) => acc + makeNumber(curr[keyPrice]) * makeNumber(curr[keyQuantity]),
      0
    )
  );
}

function getId(item) {
  let id = item[keyId];

  if (data.useAdditionalKeyId && data.keyIdAdditional && item[data.keyIdAdditional]) {
    id = item[data.keyIdAdditional];
  }

  if (idBuilder) return buildItemId(item, id);

  if (data.formatIdInShopifyFormat && data.shopifyKeyVariant && item[data.shopifyKeyVariant]) {
    const marketCode = data.shopifyMarketCode || 'ZZ';
    if (id) id = 'shopify_' + marketCode + '_' + id + '_' + item[data.shopifyKeyVariant];
  }

  return id;
}

function getIdsArray(inputArray) {
  return inputArray.map((item) => getId(item));
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

function convertCurrencyValueToMinorUnit(value, currency) {
  if (!value) return value;

  // prettier-ignore
  const zeroDecimalCurrencies = [
    'BIF', 'CLP', 'DJF', 'GNF', 'IDR', 'ISK',
    'JPY', 'KMF', 'KRW', 'MGA', 'PYG', 'RWF',
    'UGX', 'VND', 'VUV', 'XAF', 'XOF', 'XPF'
  ];
  const threeDecimalCurrencies = ['BHD', 'IQD', 'JOD', 'KWD', 'LYD', 'OMR', 'TND'];
  const upperCurrency = currency ? makeString(currency).toUpperCase() : '';

  let multiplier = 100; // default: 2 decimal places (BRL, USD, EUR, GBP, etc.)
  if (zeroDecimalCurrencies.indexOf(upperCurrency) !== -1) multiplier = 1;
  else if (threeDecimalCurrencies.indexOf(upperCurrency) !== -1) multiplier = 1000;

  return makeInteger(toFixed2(value * multiplier));
}

/*
========================================================================
                        VENDOR RELATED FUNCTIONS
========================================================================
*/

function getMetaContents(inputArray) {
  const contents = inputArray.map((item) => {
    return {
      id: getId(item),
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
  if (useGa4Array) return hasIdOptions ? getGenericItems(inputArray) : inputArray;
  return inputArray.map((item) => {
    let ga4Item = {
      item_id: getId(item),
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
      content_id: getId(item),
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
      content_id: getId(item),
      content_price: item[keyPrice],
      content_name: item[keyName],
      content_type: item[lastCategory] || lastCategory
    };
  });
}

function getMicrosoftItems(inputArray) {
  return inputArray.map((item) => {
    return {
      id: getId(item),
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
      id: getId(item),
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
    const id = getId(item);
    return {
      id: id ? makeString(id) : undefined,
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
      productId: getId(item),
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

  if (keyCategory.length === 1 && getType(item[lastCategory]) === 'array')
    return item[lastCategory].join('>');

  return keyCategory.length === 1
    ? item[lastCategory]
    : keyCategory.map((category) => item[category]).join('>');
}

function getRakutenLineitems(inputArray) {
  const formattedItems = inputArray.map((item) => {
    const formattedItem = {
      sku: getId(item),
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
      ProductID: getId(item),
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

function getOpenAIContents(inputArray) {
  const contentType = data.contentTypeOpenAI;
  const groupIdKey = data.openAIKeyGroupId;
  const currency = inputArray[0][keyCurrency] || getEventData(keyCurrency);
  return inputArray.map((item) => {
    const id = getId(item);
    const amount = item[keyPrice] ? makeNumber(item[keyPrice]) : 0;
    return {
      id: id ? makeString(id) : undefined,
      group_id: groupIdKey && item[groupIdKey] ? makeString(item[groupIdKey]) : undefined,
      amount: convertCurrencyValueToMinorUnit(amount, currency),
      name: item[keyName] ? makeString(item[keyName]) : undefined,
      quantity: item[keyQuantity] ? makeInteger(item[keyQuantity]) : undefined,
      content_type: contentType,
      currency: currency
    };
  });
}

function getOpenAIAmount(inputArray) {
  const value = getTotalValue(inputArray);
  const currency = inputArray[0][keyCurrency] || getEventData(keyCurrency);
  return convertCurrencyValueToMinorUnit(value, currency);
}

function getGenericItems(inputArray) {
  return inputArray.map((item) => {
    if (getType(item) !== 'object') return item;
    const genericItem = {};
    Object.keys(item).forEach((key) => {
      genericItem[key] = item[key];
    });
    const id = getId(item);
    if (id !== undefined) genericItem[keyId] = id;
    return genericItem;
  });
}

/*
========================================================================
                           ITEM ID BUILDER
========================================================================
*/

function createIdBuilder() {
  const variables = {};
  (data.idPatternVariables || []).forEach((row) => {
    if (row && row.name) variables[makeString(row.name).trim()] = row;
  });

  return {
    pattern: parsePattern(data.idPattern),
    fallbackPattern:
      data.onMissingToken === 'fallback' ? parsePattern(data.idFallbackPattern) : undefined,
    variables: variables,
    hostnameToken: data.useHostnameLookup
      ? makeString(data.hostnameLookupToken || '').trim() || 'country'
      : undefined,
    hostnameValue: data.useHostnameLookup ? lookupHostnameValue() : undefined
  };
}

function parsePattern(pattern) {
  if (pattern === undefined || pattern === null || pattern === '') return undefined;
  pattern = makeString(pattern);

  const parts = [];
  let hasToken = false;
  let cursor = 0;
  while (cursor < pattern.length) {
    const close = pattern.indexOf('}', cursor);
    const open = close === -1 ? -1 : pattern.lastIndexOf('{', close);
    const tokenName = open >= cursor ? pattern.substring(open + 1, close).trim() : '';

    if (!tokenName) {
      const end = close === -1 ? pattern.length : close + 1;
      parts.push({ text: pattern.substring(cursor, end) });
      cursor = end;
    } else {
      if (open > cursor) parts.push({ text: pattern.substring(cursor, open) });
      parts.push({ token: tokenName });
      hasToken = true;
      cursor = close + 1;
    }
  }
  return hasToken ? parts : undefined;
}

function buildItemId(item, originalId) {
  let id = buildIdFromParts(idBuilder.pattern, item, originalId);
  if (id === undefined) id = buildIdFromParts(idBuilder.fallbackPattern, item, originalId);
  return id === undefined ? stripShopifyGid(originalId) : id;
}

function buildIdFromParts(parts, item, originalId) {
  if (!parts) return undefined;

  let id = '';
  for (let i = 0; i < parts.length; i++) {
    if (parts[i].token) {
      const value = resolveToken(parts[i].token, item, originalId);
      if (value === undefined) return undefined;
      id += value;
    } else {
      id += parts[i].text;
    }
  }
  return id;
}

function resolveToken(name, item, originalId) {
  let value;
  if (name === 'id') {
    value = originalId;
  } else if (name === idBuilder.hostnameToken) {
    value = idBuilder.hostnameValue;
  } else if (idBuilder.variables.hasOwnProperty(name)) {
    const variable = idBuilder.variables[name];
    value =
      variable.source === 'itemKey'
        ? getItemValue(item, makeString(variable.value || '').trim())
        : variable.value;
  } else {
    value = getItemValue(item, name);
  }
  return cleanTokenValue(value);
}

function getItemValue(item, path) {
  if (!path) return undefined;
  if (item[path] !== undefined) return item[path];

  const keys = path.split('.');
  let value = item;
  for (let i = 0; i < keys.length; i++) {
    const type = getType(value);
    if (type !== 'object' && type !== 'array') return undefined;
    value = value[keys[i]];
  }
  return value;
}

function cleanTokenValue(value) {
  const type = getType(value);
  if (type !== 'string' && type !== 'number' && type !== 'boolean') return undefined;

  const stringValue = stripShopifyGid(makeString(value).trim());
  return stringValue === '' ? undefined : stringValue;
}

function stripShopifyGid(value) {
  if (!data.stripShopifyGid || getType(value) !== 'string' || value.indexOf('gid://') !== 0) {
    return value;
  }
  return value.substring(value.lastIndexOf('/') + 1);
}

function lookupHostnameValue() {
  const hostname = normalizeHostname(data.hostnameLookupSource || getEventData('page_location'));
  const rows = data.hostnameLookupTable || [];
  for (let i = 0; i < rows.length; i++) {
    if (hostname && normalizeHostname(rows[i].hostname) === hostname) {
      const value = rows[i].tokenValue;
      if (value !== undefined && value !== null && makeString(value).trim() !== '') return value;
      break;
    }
  }
  return data.hostnameLookupDefault;
}

function normalizeHostname(hostname) {
  if (!hostname) return '';
  let host = makeString(hostname).trim().toLowerCase();
  if (host.indexOf('://') !== -1) {
    const url = parseUrl(host);
    host = url && url.hostname ? url.hostname : '';
  }
  if (host.indexOf('www.') === 0) host = host.substring(4);
  return host;
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
              },
              {
                "type": 1,
                "string": "currency"
              }
            ]
          }
        },
        {
          "key": "eventDataAccess",
          "value": {
            "type": 1,
            "string": "any"
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

scenarios:
- name: '[Generic] items keep every key and get the rebuilt ID'
  code: |-
    const result = runCode(createMockData({ genericReturnParameter: 'items' }));

    assertThat(result).isEqualTo([
      {
        item_id: 'shopify_SE_8123456789_44556677',
        item_variant: 'gid://shopify/ProductVariant/44556677',
        price: 10,
        quantity: 2
      }
    ]);
    assertThat(shopItem.item_id).isEqualTo('8123456789');
- name: '[Generic] ids return a flat array, also as JSON'
  code: |-
    assertThat(runCode(createMockData())).isEqualTo(['shopify_SE_8123456789_44556677']);
    assertThat(runCode(createMockData({ jsonOutput: true }))).isEqualTo(
      '["shopify_SE_8123456789_44556677"]'
    );
- name: '[Generic] items without an ID or not objects are kept as they are'
  code: |-
    const result = runCode(
      createMockData({ genericReturnParameter: 'items', inputArray: [{ item_name: 'Shirt' }] })
    );

    assertThat(result).isEqualTo([{ item_name: 'Shirt' }]);

    const mixed = createMockData({ genericReturnParameter: 'items', idPattern: '{constructor}_{item_id}' });
    mixed.inputArray = ['not an object', { item_id: 1 }];
    assertThat(runCode(mixed)).isEqualTo(['not an object', { item_id: 1 }]);
- name: '[Platforms] Meta, TikTok and GA4 custom array outputs use the rebuilt ID'
  code: |-
    const expectedId = 'shopify_SE_8123456789_44556677';

    const contentIds = runCode(
      createMockData({ platform: 'meta', metaReturnParameter: 'content_ids' })
    );
    const metaContents = runCode(createMockData({ platform: 'meta', metaReturnParameter: 'contents' }));
    const tiktokContents = runCode(
      createMockData({ platform: 'tiktok', tiktokReturnParameter: 'contents', keyCategory: '' })
    );
    const ga4Items = runCode(
      createMockData({ platform: 'ga4', ga4ReturnParameter: 'items', keyCategory: '' })
    );

    assertThat(contentIds).isEqualTo([expectedId]);
    assertThat(metaContents[0].id).isEqualTo(expectedId);
    assertThat(tiktokContents[0].content_id).isEqualTo(expectedId);
    assertThat(ga4Items[0].item_id).isEqualTo(expectedId);
- name: '[GA4] Event Data items get the rebuilt ID when the builder is on'
  code: |-
    eventData = {
      items: [{ item_id: 1, item_variant: 'gid://shopify/ProductVariant/9', item_category: 'A' }]
    };

    const result = runCode(
      createMockData({ getGa4Items: true, platform: 'ga4', ga4ReturnParameter: 'items' })
    );

    assertThat(result).isEqualTo([
      { item_id: 'shopify_SE_1_9', item_variant: 'gid://shopify/ProductVariant/9', item_category: 'A' }
    ]);
- name: '[GA4] Event Data items change only when an ID option is on'
  code: |-
    eventData = { items: [{ item_id: 1, item_variant: '9', sku: 'S1' }] };
    const ga4 = { platform: 'ga4', ga4ReturnParameter: 'items', getGa4Items: true };

    assertThat(runCode(ga4)).isEqualTo([{ item_id: 1, item_variant: '9', sku: 'S1' }]);

    const shopify = assign(
      { formatIdInShopifyFormat: true, shopifyKeyVariant: 'item_variant', shopifyMarketCode: 'SE' },
      ga4
    );
    assertThat(runCode(shopify)).isEqualTo([
      { item_id: 'shopify_SE_1_9', item_variant: '9', sku: 'S1' }
    ]);

    const additional = assign({ useAdditionalKeyId: true, keyIdAdditional: 'sku' }, ga4);
    assertThat(runCode(additional)).isEqualTo([{ item_id: 'S1', item_variant: '9', sku: 'S1' }]);
- name: '[Missing token] keeps the original ID or uses the fallback pattern'
  code: |-
    [
      { item: { item_id: '555' }, overrides: {}, expected: '555' },
      {
        item: { item_id: '555' },
        overrides: { onMissingToken: 'fallback', idFallbackPattern: 'shopify_{country}_{item_id}' },
        expected: 'shopify_SE_555'
      },
      {
        item: { item_id: 7 },
        overrides: { onMissingToken: 'fallback', idFallbackPattern: '{sku}' },
        expected: 7
      },
      { item: { item_id: '555', item_variant: '  ' }, overrides: {}, expected: '555' },
      { item: { item_id: '555', item_variant: null }, overrides: {}, expected: '555' },
      { item: { item_id: 'gid://shopify/Product/9' }, overrides: {}, expected: '9' },
      { item: { item_id: '555' }, overrides: { idPattern: 'EU-id' }, expected: '555' }
    ].forEach((scenario) => {
      const mockData = createMockData(scenario.overrides);
      mockData.inputArray = [scenario.item];

      assertThat(runCode(mockData)).isEqualTo([scenario.expected]);
    });
- name: '[Cleanup] GID strip on and off, and values become trimmed strings'
  code: |-
    assertThat(runCode(createMockData({ stripShopifyGid: false }))).isEqualTo([
      'shopify_SE_8123456789_gid://shopify/ProductVariant/44556677'
    ]);
    assertThat(
      runCode(createMockData({ idPattern: '{item_id}|{sku}', inputArray: [{ item_id: 42, sku: ' A1 ' }] }))
    ).isEqualTo(['42|A1']);
    assertThat(
      runCode(createMockData({ stripShopifyGid: false, inputArray: [{ item_id: 'gid://shopify/Product/9' }] }))
    ).isEqualTo(['gid://shopify/Product/9']);
    assertThat(
      runCode(
        createMockData({
          idPattern: '{v}',
          idPatternVariables: [{ name: 'v', source: 'itemKey', value: ' sku ' }],
          inputArray: [{ sku: 'A1' }]
        })
      )
    ).isEqualTo(['A1']);
- name: '[Tokens] id uses the Additional Key, dot paths read nested keys'
  code: |-
    const additional = createMockData({
      useAdditionalKeyId: true,
      keyIdAdditional: 'sku',
      idPattern: 'x_{id}',
      inputArray: [{ item_id: 1, sku: 'S1' }]
    });
    const nested = createMockData({
      idPattern: '{item_id}-{variant.id}-{variant.missing.key}',
      idPatternVariables: [],
      onMissingToken: 'fallback',
      idFallbackPattern: '{item_id}-{variant.id}',
      inputArray: [{ item_id: 1, variant: { id: 22 } }]
    });

    assertThat(runCode(additional)).isEqualTo(['x_S1']);
    assertThat(runCode(nested)).isEqualTo(['1-22']);
- name: '[Pattern] empty, unclosed and nested braces stay as literal text'
  code: |-
    const mockData = createMockData({
      idPattern: 'a{}b_{item_id}_{x',
      inputArray: [{ item_id: 1 }]
    });
    const nested = createMockData({ idPattern: 'a{b{item_id}', inputArray: [{ item_id: 1 }] });

    assertThat(runCode(mockData)).isEqualTo(['a{}b_1_{x']);
    assertThat(runCode(nested)).isEqualTo(['a{b1']);
- name: '[Hostname] lookup from page_location (match, www, default, no match)'
  code: |-
    [
      { pageLocation: 'https://www.shop.no/checkout?x=1', expected: 'shopify_NO_8123456789_44556677' },
      { pageLocation: 'https://SHOP.de/', expected: 'shopify_DE_8123456789_44556677' },
      { pageLocation: 'https://other.com/', expected: '8123456789' },
      { pageLocation: undefined, expected: '8123456789' },
      { pageLocation: 'https://other.com/', fallback: 'SE', expected: 'shopify_SE_8123456789_44556677' },
      { pageLocation: 'https://shop.fi/', fallback: 'SE', expected: 'shopify_SE_8123456789_44556677' }
    ].forEach((scenario) => {
      eventData = { page_location: scenario.pageLocation };
      const mockData = createMockData({
        idPatternVariables: [{ name: 'variant', source: 'itemKey', value: 'item_variant' }],
        useHostnameLookup: true,
        hostnameLookupToken: 'country',
        hostnameLookupDefault: scenario.fallback,
        hostnameLookupTable: [
          { hostname: 'shop.no', tokenValue: 'NO' },
          { hostname: 'www.shop.de', tokenValue: 'DE' },
          { hostname: 'shop.fi', tokenValue: '' }
        ]
      });

      assertThat(runCode(mockData)).isEqualTo([scenario.expected]);
    });
- name: '[Hostname] override field wins over page_location'
  code: |-
    eventData = { page_location: 'https://shop.de/' };
    const mockData = createMockData({
      idPatternVariables: [{ name: 'variant', source: 'itemKey', value: 'item_variant' }],
      useHostnameLookup: true,
      hostnameLookupToken: ' market ',
      idPattern: '{market}_{item_id}',
      hostnameLookupTable: [
        { hostname: 'shop.no', tokenValue: 'NO' },
        { hostname: 'shop.de', tokenValue: 'DE' }
      ]
    });

    mockData.hostnameLookupSource = 'https://shop.no/page';
    assertThat(runCode(mockData)).isEqualTo(['NO_8123456789']);

    mockData.hostnameLookupSource = 'shop.no';
    assertThat(runCode(mockData)).isEqualTo(['NO_8123456789']);
- name: '[Legacy] Shopify format is unchanged and the builder takes precedence'
  code: |-
    const legacy = {
      platform: 'meta',
      metaReturnParameter: 'content_ids',
      inputArray: [shopItem],
      keyId: 'item_id',
      formatIdInShopifyFormat: true,
      shopifyKeyVariant: 'item_variant',
      shopifyMarketCode: 'SE'
    };

    assertThat(runCode(legacy)).isEqualTo([
      'shopify_SE_8123456789_gid://shopify/ProductVariant/44556677'
    ]);

    const both = createMockData(legacy);
    both.idPattern = 'built_{item_id}';
    assertThat(runCode(both)).isEqualTo(['built_8123456789']);
setup: |-
  const assign = (target, source) => {
    for (let key in source) target[key] = source[key];
    return target;
  };

  let eventData = {};
  mock('getEventData', (key) => eventData[key]);

  const shopItem = {
    item_id: '8123456789',
    item_variant: 'gid://shopify/ProductVariant/44556677',
    price: 10,
    quantity: 2
  };

  const createMockData = (overrides) =>
    assign(
      {
        platform: 'generic',
        genericReturnParameter: 'ids',
        inputArray: [shopItem],
        keyId: 'item_id',
        keyPrice: 'price',
        keyQuantity: 'quantity',
        buildIdFromPattern: true,
        idPattern: 'shopify_{country}_{item_id}_{variant}',
        idPatternVariables: [
          { name: 'country', source: 'value', value: 'SE' },
          { name: 'variant', source: 'itemKey', value: 'item_variant' }
        ],
        stripShopifyGid: true,
        onMissingToken: 'original'
      },
      overrides || {}
    );


___NOTES___

2026-11-27 - Change Notes:
 - Add the Item ID Builder: rebuilds the Product ID from a pattern whose tokens come from item keys, Pattern Variables (text or GTM variables) or a hostname lookup table, so IDs match Merchant Center, Meta and TikTok catalogs (e.g. Shopify multi-market feeds).
 - Add Shopify GID prefix stripping, a missing-token strategy (keep the original Product ID or try a fallback pattern) and unit tests for the Item ID Builder.
 - Add the Generic platform, which returns the input items with the rebuilt Product ID (all other keys kept) or a flat array of rebuilt IDs.
 - Show the Additional Product ID Key, Shopify Product Feed format and Product Image URL Key when "Use GA4 items from Event Data" is checked: the code always read them, but the hidden section made them impossible to set. GA4 items read from Event Data now get the rebuilt ID when any of these ID options or the Item ID Builder is on, and are returned unchanged otherwise.
 - Reword labels and help texts so they read consistently: Platform options use each API's official name (e.g. TikTok Events API, OpenAI (ChatGPT Ads) Conversions API), checkbox labels drop the trailing question mark, key fields share the "Product ... Key" naming, and broken documentation links and typos are fixed.

2026-09-09 - Change Notes:
 - Add OpenAI contents group_id support (Group ID Key) to match the current OpenAI Conversions API Content schema.
 - Refresh OpenAI documentation links to reflect the latest official docs revision.

2026-06-15 - Change Notes:
 - Add OpenAI Ads parameters.
 - Add additional source for Product ID/SKU.
 - Add Shopify Product ID Feed format support.

2026-04-27 - Change Notes:
 - Fix Reddit output item parameters and related types


Created on 29/10/2025, 10:16:51

