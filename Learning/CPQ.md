Salesforce CPQ – Learning Topics

Below are detailed and professional descriptions written from a learning perspective, using "I learned" so you can directly add them to your README file for manager review.

1. Multiple Currency

I learned about Multiple Currency in Salesforce CPQ, which allows businesses to manage product pricing and sales transactions in different currencies based on customer and regional requirements. I understood how different currencies are enabled and configured in Salesforce, how currency conversion rates work, and how currency impacts Price Books, Quotes, and Quote Line Items. I also learned how Salesforce CPQ handles product pricing when creating quotes in different currencies.

2. Pricing Method

I learned about Pricing Methods in Salesforce CPQ, which define how the system calculates the price of a product when it is added to a Quote Line. I understood how different pricing methods are configured at the product level and how they affect the final selling price. I also explored how pricing methods help businesses manage product costs, standard prices, quantity-based pricing, and percentage-based pricing according to their business requirements.

3. Types of Pricing Methods

I learned about the different types of Pricing Methods available in Salesforce CPQ and understood how each method calculates product prices based on different business scenarios.

List Price: Learned how the product price is determined using the standard price defined in the Price Book.

Cost Price: Learned how product pricing is calculated based on the product's cost, which can be used to determine the selling price.

Block Price: Learned how a fixed price is assigned to a predefined quantity range instead of calculating the price for each individual unit.

Percent of Total (POT): Learned how the price of a product is calculated as a percentage of the total price of selected products or services in a quote.

4. Block Price

I learned about Block Pricing in Salesforce CPQ, where a fixed price is assigned to a specific quantity range rather than calculating the price based on individual product quantities. I understood how Block Price is configured using Block Price records and how different quantity ranges can have different fixed prices. For example, if a product is priced at $500 for a quantity range of 1–10 units, the customer pays $500 for any quantity within that range. I also learned how CPQ evaluates the applicable block based on the selected product quantity during quote calculation.

5. Overage Rate in Block Price

I learned about the Overage Rate functionality in Salesforce CPQ, which is used when the selected product quantity exceeds the defined block quantity range. I understood how the Overage Rate determines the additional price charged for quantities beyond the predefined block limit. For example, if a block price covers 1–10 units at $500 and the overage rate is $20 per additional unit, selecting 12 units results in an additional charge of $40. This helps businesses manage quantity-based pricing while maintaining flexibility for customers who require quantities beyond predefined blocks.

6. Percentage of Total (POT)

I learned about Percentage of Total pricing in Salesforce CPQ, which calculates the price of a product based on a specified percentage of the total value of selected products in a quote. I understood how the Percentage of Total field is configured at the product level and how the system calculates the price based on eligible Quote Lines. For example, if the selected products have a combined value of $10,000 and the POT percentage is 10%, the calculated price of the POT product will be $1,000. I also learned how POT is commonly used for additional services such as maintenance, support, warranties, and insurance.

7. Twin Fields

I learned about Twin Fields in Salesforce CPQ, which are corresponding fields with matching API names and compatible data types on related objects. These fields allow Salesforce CPQ to automatically transfer field values from one object to another during specific record creation processes. I understood how Twin Fields are used to copy information between Quote Line and Opportunity Product, and how they help maintain data consistency across related records. I also explored their importance in reducing manual data entry and supporting business requirements involving custom fields.

8. Bundle Attribute

I learned about Bundle Attributes in Salesforce CPQ, which allow users to capture additional information or make specific selections while configuring a product bundle. I understood how Bundle Attributes are created and associated with Product Features and Product Options to collect customer requirements during the product configuration process. I also learned how attributes can be used to control product selections, capture configuration details, and support different business scenarios. For example, while configuring a Laptop Bundle, an attribute can allow users to select RAM size, storage capacity, or operating system based on the available configuration options.