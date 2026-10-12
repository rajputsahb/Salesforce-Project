### Salesforce Revenue Cloud – Learning Topics

Below are detailed, professional descriptions written from a learning perspective, suitable for adding directly to your README file for manager review.

### 1. Usage-Based Product

I learned about Usage-Based Products in Salesforce Revenue Cloud, which allow businesses to charge customers based on their actual consumption of a product or service. Unlike traditional products with a fixed selling price, usage-based products calculate charges according to consumption metrics such as API calls, data usage, transactions, or service units.
I explored how usage-based products work with product selling models, usage definitions, pricing configurations, and customer entitlements. I also learned how usage-based pricing supports flexible business models in which the final charges depend on the customer's consumption.
Example: A company provides 10,000 API calls to a customer and charges an additional amount when the customer consumes more than the included allowance.

### 2. Types of Usage-Based Products

I studied different usage-based commercial models in Salesforce Revenue Cloud, including Anchor-Based, Pack-Based, Token Commitment, Quantity Commitment, and Monetary Commitment. I explored how each model represents a different way to manage usage allowances, commitments, and consumption-based charges.

### A. Anchor-Based Usage

I learned about Anchor-Based Usage, where usage is associated with a reference product, subscription, or eligible commercial arrangement. This relationship helps identify the subscription or product to which the consumption belongs and supports the calculation of relevant usage charges.
Example: A customer purchases a cloud platform subscription, and the API usage associated with that service is tracked against the applicable subscription.

### B. Pack-Based Usage

I learned about Pack-Based Usage, where usage is offered in predefined packs or units rather than being sold only as individual consumption events. I explored how packs can represent a specific quantity of usage and how pricing depends on the configured pack size and charging rules.
Example: A customer purchases a pack of 10,000 API calls. The applicable charge depends on the configured price for that pack and the relevant consumption rules.

### C. Token Commitment

I learned about Token Commitment, which represents a commercial arrangement in which a customer commits to purchasing or consuming a defined number of usage tokens. I explored how token-based models can represent consumption allowances for services such as AI requests, API operations, or other metered activities, depending on the configured usage model.
Example: A customer commits to a package of 100,000 AI processing tokens for a specified commercial period.

### D. Quantity Commitment

I learned about Quantity Commitment, where a customer agrees to a predefined quantity of a product or service over a specified period. I explored how quantity commitments can support commercial agreements that establish expected or committed usage and how the associated pricing depends on the configured product and pricing rules.
Example: A customer commits to consuming 50,000 transactions during a contract period.

### E. Monetary Commitment

I learned about Monetary Commitment, where a customer commits to a specified monetary amount for eligible products or services over a defined period. I explored how monetary commitments can support prepaid or committed-spend arrangements and how actual consumption can be evaluated against the committed amount according to the configured commercial rules.
Example: A customer commits to spending ₹1,00,000 on eligible cloud services, and their usage is tracked against that commitment.

### 3. Process to Create a Usage-Based Product

I learned the process of creating and configuring a Usage-Based Product in Salesforce Revenue Cloud. I explored how the product, selling model, usage definition, usage resource, and pricing configuration work together to support consumption-based selling.

The general configuration process includes:

1. Create the Product: Define the product name, product code, and relevant product details.
2. Configure the Selling Model: Associate the appropriate selling model and commercial arrangement with the product.
3. Define Usage: Configure the usage definition to represent the type of consumption being measured.
4. Configure Usage Resources: Set up the required usage resource and associate it with the relevant product or usage configuration.
5. Configure Units of Measure: Define the appropriate unit, such as API calls, transactions, or gigabytes, wherever required.
6. Configure Pricing: Set up the applicable usage pricing, rates, packs, or commitment-based commercial terms.
7. Configure Product Availability: Add the product to the appropriate catalog and category, and configure the required product discovery settings.
8. Test the Product: Verify that the product is available for selection and that its usage and pricing configuration meets the business requirements.

I also learned that the exact configuration steps depend on the Revenue Cloud implementation and the usage model being configured.

### 4. Usage Definition

I learned about Usage Definitions in Salesforce Revenue Cloud, which describe the usage or consumption being measured for a product or service. I explored how usage definitions help establish the structure for representing consumption, including the relevant usage metric and associated configuration.
For example, a cloud service may use an API Call usage definition to represent the number of API requests consumed by a customer. This helps establish a consistent basis for tracking and pricing usage.
I also learned how usage definitions relate to usage resources and product usage configurations within the overall consumption-based selling process.

### 5. Usage Resource

I learned about Usage Resources in Salesforce Revenue Cloud, which represent resources or usage-related measures involved in consumption-based commercial models. I explored how usage resources support the representation and management of consumption information and how they can be used with the relevant usage configuration to identify what is being measured.
For example, a business may track API calls, data storage, or transaction counts as usage resources, depending on the configured solution. I also learned that the usage resource and its associated configuration must align with the product's intended charging model.

### 6. Product Usage Resource

I learned about Product Usage Resources, which connect usage-related information with the relevant product offering in Salesforce Revenue Cloud. I explored how this relationship helps identify the usage resource associated with a product and supports the configuration of consumption-based products.
For example, a Cloud API Service product may be associated with an API Call usage resource so that the relevant consumption metric can be used in the product's usage configuration.
I also learned why the relationship between a product, its usage definition, and its usage resource is important for maintaining consistency across product setup, usage tracking, and pricing.

### 7. Grants

I learned about Grants in Salesforce Revenue Cloud and how they relate to customer usage allowances or entitlements in supported usage-based commercial models. I explored how grants can represent an allocated quantity or entitlement that a customer can consume according to the applicable commercial terms.
For example, a customer may receive an allowance of 10,000 API calls as part of a subscription. The grant represents the applicable allowance, and consumption can be evaluated against it according to the configured usage and entitlement rules.
I also learned how usage allowances can help businesses manage included consumption, track entitlement utilization, and support commercial arrangements in which additional charges may apply after the allowance is exhausted.

### 8. Unit of Measure (UOM) Class

I learned about Unit of Measure (UOM) Classes in Salesforce Revenue Cloud, which help organize units used to measure quantities for products, services, and usage-based offerings. I explored how units of measure provide a consistent way to represent consumption and how the appropriate unit depends on the product and its usage metric.
For example, a usage-based service may measure consumption in API calls, gigabytes, transactions, or hours. I also learned why selecting the appropriate unit of measure is important for ensuring that the usage quantity and pricing calculation are aligned.

### 9. Bundle Product in Revenue Cloud

I learned how to create and configure a Bundle Product in Salesforce Revenue Cloud, which allows multiple products or services to be offered together as a combined solution. I explored how a parent bundle can contain related child products and how product relationships, attributes, and configuration options can be used to support customer-specific selections.

The general configuration process includes:
1. Create the required individual products.
2. Configure the relevant product selling models and pricing.
3. Create the parent bundle product.
4. Associate the required child products or components with the bundle.
5. Configure product relationships, attributes, and applicable configuration rules.
6. Organize the bundle within the appropriate catalog and category.
7. Test the bundle to verify that users can discover it, select the required options, and obtain the expected pricing.
Example: A Cloud Service Bundle may include a base subscription, API usage packs, and premium support. The customer can purchase the combined offering according to the configured product and pricing rules.
I also learned how bundles help businesses package related products and services into a structured commercial offering while simplifying the product selection process.