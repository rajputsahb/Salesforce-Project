### Salesforce CPQ & Revenue Cloud – Learning Topics

### 1. Adding Product Images in Salesforce CPQ

I learned how to display product images in Salesforce CPQ so that users can visually identify products while working with the product catalog or Quote Line Editor. I understood how product images can improve the product selection experience, especially when there are multiple similar products.
As part of the implementation, I first created a Static Resource in Salesforce to store the product image. After that, I created two custom fields on the Product object:
- Text Field: Used to store the image reference or image path.
- Formula Field: Used to construct the image URL and display the image using the Salesforce IMAGE() formula function.
I also learned how to add the required Product field to the appropriate Field Set so that the image-related information can be displayed in the CPQ interface. I tested the configuration by associating an image with a product and verifying that the image was displayed correctly.
For example, an image formula can use the following approach:
IMAGE(Product_Image_Link__c, "Product Image", 32, 32)
I understood that the IMAGE() function takes the image URL/reference, alternative text, image height, and image width and renders the image in Salesforce.

### 2. Product Image Configuration in Revenue Cloud

I also explored how product images can be configured and displayed in Salesforce Revenue Cloud. I compared the approach used in Salesforce CPQ with the Revenue Cloud product catalog experience and investigated how product information and visual assets can be associated with products.
I learned that Revenue Cloud provides a more catalog-oriented product experience where product information, attributes, categories, and other product metadata can be presented together to support product discovery and selling. I also explored how product images can improve the product discovery experience by helping users visually identify the correct product.

### 3. Usage-Based Product in Revenue Cloud

I learned about Usage-Based Products in Salesforce Revenue Cloud, where customers are charged based on their actual consumption or usage instead of only a fixed product quantity or subscription term. I understood how usage-based products are useful for businesses where customer consumption can change over time, such as cloud services, API usage, storage, telecommunications, or transaction-based services.
I also studied different usage-based product models and how they can be configured based on the business requirement.

### A. Anchor-Based Usage

I learned about Anchor-Based Usage, where usage charges are associated with an anchor or base product, subscription, or entitlement. The anchor provides the reference point for determining which usage belongs to a particular customer or subscription.
For example, if a customer purchases a cloud platform subscription as the base product, the API calls or storage consumption associated with that subscription can be tracked and charged as usage.

### B. Pack-Based Usage

I learned about Pack-Based Usage, where usage is sold in predefined packs or units instead of charging for every individual usage event. I understood how customers can purchase a specific number of usage units and consume them over a defined period.
For example, a customer may purchase a pack of 10,000 API calls. The customer can consume those calls, and the pricing is based on the purchased or consumed pack according to the configured business rules.

### C. Other Usage-Based Models

I also explored how Revenue Cloud can support different consumption-based pricing scenarios depending on the business requirement. The pricing can be based on metrics such as quantity consumed, transactions, API calls, storage, data volume, or service usage.
I learned that configuring a usage-based product requires understanding the product selling model, usage metric, pricing logic, and relationship between the usage record and the customer's product or subscription.