# Universal Conversions Variable for Google Tag Manager Server Container

Universal Conversions Variable for Server Side Google Tag Manager allows you to map multiple parameters into the formats required by platform destinations (Meta, TikTok, GA4, Reddit, etc.), such as:

- product array
- value
- item count
- etc.

## It currently supports the following platforms:

- Meta Conversions API
- Google Analytics 4
- TikTok Events API
- X (Twitter) Conversion API
- Microsoft Advertising UET Conversion API
- Klaviyo Events API
- Snapchat Conversions API
- Google Ads Offline Conversions
- Pinterest Conversions API
- Rakuten Advertising
- Reddit Conversions API
- OpenAI (ChatGPT Ads) Conversions API
- Generic (returns the items with a rebuilt Product ID, or a flat ID array)

## Item ID Builder

The Item ID Builder replaces the Product ID of each item with text built from a pattern, before the variable formats the items for the chosen platform. Every platform output uses the new ID. Use it when the IDs in the ecommerce data differ from the IDs in a product feed, such as the `shopify_<market>_<product>_<variant>` format of Shopify feeds in Google Merchant Center.

### Setup

1. In the **Item ID Builder** section, check **Build Product ID from a pattern**.
2. Write the **ID Pattern**. A name in curly braces is a token, e.g. `{item_id}`. Other text is copied as written, and so are braces with no name in them.
3. If needed, define tokens in **Pattern Variables**, fill one token from a hostname table, and choose what happens when a token has no value.

### Token values

Each token takes the first value found in this list:

1. `{id}`: the original Product ID, read with the Product ID Key (or the Additional Product ID Key, if enabled). The name `id` is reserved, so Pattern Variables don't accept it.
2. The hostname lookup value, when the token is the lookup's **Token Name**.
3. The **Pattern Variables** row with the same Token Name. Source **Value** gives the text or GTM variable of the Value column. Source **Item key** reads the item key named in the Value column.
4. The item key with the same name. A dot reads a nested key: `{dimensions.size}` reads `size` inside `dimensions`.

The rebuilt ID is always a string. A pattern with no token is ignored, as if a token were missing.

### Options

- **Hostname lookup** fills one token from a table of hostnames, for stores with one domain per market. The hostname is read from the `page_location` Event Data parameter, unless the optional **Hostname** field holds a hostname or a URL. Hostnames match regardless of case and of a leading `www.`. **Default Value** is used when no row matches, or when the matching row has no Token Value.
- **Strip Shopify GID prefixes** is on by default: `gid://shopify/ProductVariant/9002` becomes `9002`. This also applies to an original Product ID that is kept because a token is missing.
- **If a token is missing or empty**: keep the original Product ID, or use a **Fallback ID Pattern**. When a token of the fallback pattern is also missing, the original Product ID is kept.

### Example

A Shopify store sells in France on `www.example.fr` and in Italy on `example.it`. Its Merchant Center feeds use IDs like `shopify_FR_501_9002`. The variable is set up with:

- **Use GA4 items from Event Data** checked.
- ID Pattern `shopify_{market}_{item_id}_{variant}`.
- Pattern Variables: `variant`, Source **Item key**, Value `item_variant`.
- Hostname lookup: Token Name `market`, rows `example.fr` = `FR` and `example.it` = `IT`.
- If a token is missing or empty: **Use a fallback pattern**, `shopify_{market}_{item_id}`.

A purchase on `https://www.example.fr/checkout` has these items:

```json
[
  { "item_id": "501", "item_variant": "gid://shopify/ProductVariant/9002", "price": 25 },
  { "item_id": "502", "price": 40 }
]
```

- Platform **Generic**, return **items**, gives the same items with `item_id` set to `shopify_FR_501_9002` and `shopify_FR_502`. The second item has no `item_variant`, so the fallback pattern builds its ID.
- Platform **Generic**, return **ids**, or Platform **Meta**, return **content_ids**, gives `["shopify_FR_501_9002", "shopify_FR_502"]`.

### Recipes

- **Rebuilt IDs for every tag**: set Platform **Generic**, return **items**, check **Use GA4 items from Event Data**, and use the variable in a Transformation that overwrites the `items` Event Data parameter. Every tag that reads `items` then sends the rebuilt IDs.
- **Same prefix for every ID**: pattern `EU-{id}` turns `501` into `EU-501`. No Pattern Variables are needed.
- **Market sent with the event**: a Pattern Variables row `market`, Source **Value**, Value `{{Event Data - market}}`, instead of the hostname lookup.
- **Meta catalog matching**: Platform **Meta**, return **content_ids** or **contents**, with the same builder settings.

When **Use GA4 items from Event Data** is checked, the GA4 item keys (`item_id`, `item_name`, `price`, `quantity`, `item_brand`, `item_category`…) are used automatically, so only the Product ID options and the Product Image URL Key are shown. GA4 **items** are returned unchanged unless one of these ID options is enabled: Additional Product ID Key, Shopify Product Feed format or the Item ID Builder.

## Open Source

Universal Conversions Variable for Server GTM is developed and maintained by [Stape Team](https://stape.io/) under the Apache 2.0 license.

### GTM Gallery Status
🟢 [Listed](https://tagmanager.google.com/gallery/#/owners/stape-io/templates/universal-conversions-server-variable)
