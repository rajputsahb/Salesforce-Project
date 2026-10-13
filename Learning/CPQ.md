### Salesforce Revenue Cloud – Learning Topics

Below are detailed and professional descriptions written from a learning perspective, suitable for adding directly to your README file for manager review.

### 1. Pricing Procedure

I learned about Pricing Procedures in Salesforce Revenue Cloud, which define the sequence of pricing operations used to calculate the final price of a product or transaction. I explored how pricing procedures use different elements to process pricing information, apply pricing logic, and determine the resulting price. I also learned how pricing procedures support flexible pricing scenarios involving list prices, discounts, adjustments, and other pricing conditions based on business requirements.

### 2. Pricing Procedure Elements

I learned about the different elements available within a Pricing Procedure and how they work together to perform pricing calculations. I explored how individual elements receive input data, perform specific operations, and pass the resulting values to subsequent elements in the procedure.

### A. Variables

I learned about Variables in Pricing Procedures, which store or reference values used during pricing calculations. I understood how variables can hold intermediate results, input values, or calculated amounts that are required by subsequent pricing elements. For example, a variable can store a product's base price or the calculated discount amount so that it can be used in later pricing steps.

### B. Constants

I learned about Constants in Pricing Procedures, which represent predefined values used in pricing calculations. I understood how constants can be used for fixed percentages, amounts, or other values that remain unchanged during a particular pricing calculation. For example, a predefined discount percentage of 10% can be used in a pricing calculation when the business requirement specifies a fixed discount.

### C. Pricing Setting Element

I learned about the Pricing Setting Element, which is used to configure relevant settings that influence how pricing calculations are performed within a Pricing Procedure. I explored how pricing settings help control the behavior of pricing operations based on the configured business requirements. I also learned why appropriate pricing settings are important for ensuring that the procedure processes pricing information according to the intended calculation logic.

### D. List Price Element

I learned about the List Price Element, which establishes or retrieves the list price used as a starting point for pricing calculations. I understood how the list price provides a baseline against which subsequent pricing operations, such as discounts and adjustments, can be applied. For example, if a product has a list price of ₹10,000, subsequent pricing elements can apply the relevant discounts to calculate the final selling price.

### E. Derived Price

I learned about Derived Price in Salesforce Revenue Cloud, which refers to a price determined using existing pricing information and configured pricing logic rather than relying only on a manually entered price. I explored how pricing calculations can use inputs such as a base price, pricing conditions, adjustments, and other relevant values to determine a resulting price. This helped me understand how derived pricing supports flexible pricing scenarios and reduces the need to maintain every possible selling price manually.

### 3. Contract

I learned about Contracts in Salesforce Revenue Cloud, which represent formal agreements between a business and its customers. I explored how contracts can capture commercial terms, product and service agreements, subscription information, and contract duration based on the organization's business processes. I also learned how contracts are connected to the sales and order lifecycle and how they help manage customer agreements after the initial sale.

### 4. Contract Lifecycle Management (CLM)

I learned about Contract Lifecycle Management (CLM), which covers the stages involved in creating, reviewing, approving, executing, managing, renewing, and terminating contracts. I understood how contract lifecycle processes help organizations maintain control over contractual obligations and ensure that agreements follow defined business policies.

I also explored how contract lifecycle management supports contract tracking, approval workflows, renewal planning, amendment management, and contract expiration monitoring. This helped me understand how businesses manage customer agreements throughout their lifecycle.

### 5. Contract Type

I learned about Contract Types and how they help categorize contracts according to their purpose and business requirements. I explored how contract types can be used to distinguish between different agreement scenarios, such as subscription agreements, service contracts, and other commercial arrangements. I also understood that the available contract types and their behavior depend on the configured Salesforce Revenue Cloud solution and the organization's contract management requirements.

### 6. Contract Type Cloning

I learned about Contract Type Cloning, which involves creating a new contract type by copying the configuration of an existing one, where the feature is supported. I understood how cloning can reduce repetitive configuration work when multiple contract types require similar settings but need different business-specific adjustments.

I also explored why cloned configurations should be reviewed before use to ensure that the new contract type has the correct settings, behavior, and applicable business rules.

### 7. Context Use Mapping

I learned about Context Use Mapping in Salesforce Revenue Cloud, which helps associate context information with the appropriate business process or context usage. I explored how mapping supports the use of relevant input data in processes such as pricing and other configured Revenue Cloud operations. I also learned how correct context mapping helps ensure that the required information is available in the expected structure when a business process executes.

For example, a pricing process may require product details, quantity, customer information, or transaction data. Appropriate context mapping helps make the relevant information available to the pricing logic.