### Salesforce Revenue Cloud – Learning Topics

Below are detailed and professional descriptions written from a learning perspective, suitable for adding directly to your README file for manager review.

### 1. Contract Item Price

I learned about Contract Item Price in Salesforce Revenue Cloud, which represents pricing information associated with an item covered by a customer contract. I explored how contract-related pricing can be used to maintain agreed prices for products or services throughout the contract lifecycle. I also learned how contract item pricing supports commercial agreements by helping ensure that the applicable price is used when processing transactions associated with the contract.

### 2. Contract-Based Pricing

I learned about Contract-Based Pricing in Salesforce Revenue Cloud, where product pricing is determined using pricing terms or agreed prices associated with a customer's contract. I understood how contract-based pricing helps businesses honor negotiated prices, discounts, and other commercial conditions instead of always relying on standard catalog pricing.
For example, if a customer has a negotiated price of ₹9,000 for a product with a standard price of ₹10,000, the applicable contract pricing can be used for eligible transactions according to the configured pricing rules. I also explored how contract-based pricing supports consistent pricing across eligible orders and renewals.

### 3. How to Configure Contract-Based Pricing in Revenue Cloud

I learned the general process of configuring contract-based pricing in Salesforce Revenue Cloud and how contract-related pricing information can be connected to products and transactions.

The configuration process includes:
1. Create the Product: Define the product details and configure its applicable selling model.
2. Configure Pricing: Set up the appropriate price book, pricing procedure, or pricing configuration required for the product.
3. Create the Contract: Create the customer contract using the relevant contract management process.
4. Associate Contract Items: Ensure that the relevant products or services are represented by the appropriate contract items.
5. Configure Contract Pricing: Define or associate the applicable negotiated pricing information using the supported contract pricing configuration.
6. Validate the Pricing Logic: Confirm that the pricing procedure or applicable pricing logic uses the contract-specific price when the relevant conditions are met.
7. Test the Transaction: Create an eligible quote or order and verify that the expected contract price is applied.
I also learned that the exact setup depends on the Revenue Cloud implementation, the contract data model, and the pricing configuration used in the organization.

### 4. Ramp-Based Pricing

I learned about Ramp-Based Pricing in Salesforce Revenue Cloud, which allows businesses to apply different prices, discounts, or commercial terms across predefined periods of a subscription. Instead of maintaining the same pricing throughout the subscription term, ramp-based pricing divides the subscription into segments, with each segment having its own pricing conditions.
I explored how ramp-based pricing can support introductory offers, promotional periods, and increasing or decreasing discounts over the subscription lifecycle. This approach helps businesses create flexible subscription pricing while clearly defining the applicable commercial terms for each period.

For example, a customer may receive a free trial during the first month, a 10% discount during the first subscription year, and a 20% discount during the second subscription year.

### 5. Practical Scenario – Free Trial and Yearly Ramp Discounts

I implemented a business scenario for a subscription product in Salesforce Revenue Cloud using ramp-based pricing. The requirement was to provide a free trial for the first month and then apply different discounts during subsequent yearly subscription periods.

Business Requirement
- Product: Annual Subscription Product
- Base Price: ₹12,000 per year
- First Month: Free trial
- Year 1: 10% discount
- Year 2: 20% discount
Expected Pricing Calculation
Subscription Period	Pricing Rule	Expected Price
Month 1	Free trial	₹0
Remaining 11 months of Year 1	Annual price with 10% discount, prorated for 11 months	₹9,900
Year 2	Annual price with 20% discount	₹9,600
Total for 24 months	Free month + discounted subscription periods	₹19,500
Assumption: The ₹12,000 base price is annual, pricing is prorated monthly, and the first month is free. Taxes and other charges are excluded.

Configuration Approach

I learned how to approach the configuration of this scenario by defining the subscription product, selecting the appropriate selling model, and configuring the ramp periods and pricing conditions.
1. Create the Subscription Product: Configure the product with the required subscription selling model and a base annual price of ₹12,000.
2. Configure the Subscription Term: Define a 24-month subscription period for the example scenario.
3. Define the Ramp Periods: Divide the subscription into the introductory trial period, the remaining first-year period, and the second-year period.
4. Configure the Free Trial: Set up the first-month pricing so that the customer is charged ₹0 for that period.
5. Configure the Year 1 Discount: Apply a 10% discount to the applicable subscription price for the remaining 11 months.
6. Configure the Year 2 Discount: Apply a 20% discount to the annual subscription price for the second year.
7. Test the Pricing: Create the relevant quote or order and verify the period-wise prices, discounts, and total subscription amount.

I also learned the importance of validating the subscription dates, proration settings, ramp segment boundaries, and pricing calculation sequence to ensure that the final amount matches the business requirement.