# Salesforce Revenue Cloud – Product Bundling and Conditional Discounting

## 1. Project Overview

I worked on two business scenarios in Salesforce Revenue Cloud to understand product configuration and pricing implementation.

- **Scenario 1 – Laptop Bundle Configuration:** Configure a laptop bundle containing a laptop, mouse, and warranty, where the warranty is mandatory and the mouse is optional.
- **Scenario 2 – Conditional Discounting:** Configure a 10% discount on a product priced at ₹10,000, but prevent the discount from applying to customers whose Account Type is Government.

For these scenarios, I worked with product configuration, custom objects and fields, decision tables, pricing procedures, list prices, and pricing-related configuration values.

## 2. Scenario 1: Laptop Bundle with Mandatory Warranty and Optional Mouse

### Business Requirement

A customer wants to purchase a laptop bundle containing three products:

- Laptop – Main product.
- Mouse – Optional accessory.
- Warranty – Mandatory service.

The customer must purchase the warranty with the laptop, but the mouse should be optional.

### Objective

I implemented the bundle configuration so that the warranty is required whenever the laptop bundle is purchased, while the customer can choose whether to include the mouse.

### Step 1: Create the Products

I learned how to create and configure the individual products that make up the bundle.

| Product | Purpose | Configuration |
|---|---|---|
| Laptop | Main product | Required parent product |
| Mouse | Accessory | Optional product |
| Warranty | Protection service | Mandatory product |

I verified the product details, active status, and required selling and pricing configuration.

### Step 2: Create the Laptop Bundle

I created the laptop bundle and configured the laptop as the main commercial product.

I then added the mouse and warranty as product components or options using the supported Revenue Cloud product configuration features.

### Step 3: Configure the Warranty as Mandatory

I configured the warranty as a required component of the laptop bundle.

The expected behavior is:
- The warranty is automatically included or required during configuration.
- The customer cannot remove the warranty while keeping the laptop bundle valid.
- The configuration is validated before the product can proceed through the sales process.

### Step 4: Configure the Mouse as Optional

I configured the mouse as an optional component.

The expected behavior is:
- The customer can select the mouse.
- The customer can leave the mouse unselected.
- The laptop bundle remains valid even when the mouse is not selected.

### Step 5: Test the Bundle Configuration

I tested the following scenarios to confirm that the configuration behaves as required.

| Test Scenario | Expected Result |
|---|---|
| Select the laptop bundle | Laptop is included |
| Configure the bundle without the mouse | Configuration is valid |
| Configure the bundle with the mouse | Configuration is valid |
| Attempt to remove the mandatory warranty | Removal is prevented or configuration is invalid |
| Select the laptop with the warranty and mouse | All selected products are included |

### Implementation Summary

I implemented the bundle using the product configuration capabilities available in Revenue Cloud. I verified that the warranty is mandatory and the mouse is optional, ensuring that the configuration follows the business requirement.

**Learning outcome:** I learned how to configure a commercial product bundle with a required component and an optional component, and how to validate the behavior through positive and negative test scenarios.

---

## 3. Scenario 2: Conditional Discount Based on Account Type

### Business Requirement

A company sells a product for ₹10,000. Eligible customers receive a 10% discount, but customers whose Account Type is Government must not receive this discount.

### Objective

I implemented conditional pricing logic so that the discount is applied only when the customer qualifies and the Account Type is not Government.

### Pricing Requirements

| Condition | Discount | Final Price |
|---|---:|---:|
| Eligible customer with a non-Government Account Type | 10% | ₹9,000 |
| Customer with Account Type = Government | 0% | ₹10,000 |
| Customer who does not qualify for the discount | 0% | ₹10,000 |

The calculation assumes the ₹10,000 list price and excludes taxes and other adjustments.

## 4. Step 1: Configure the Product and List Price

I configured the product and its list price so that the pricing process has a base amount from which the discount can be calculated.

**Configuration:**
- Product: Laptop or the selected example product.
- List Price: ₹10,000.
- Discount Rate: 10%.
- Discount Amount for eligible customers: ₹1,000.
- Final Price for eligible customers: ₹9,000.

The list price provides the base price used by the pricing procedure.

## 5. Step 2: Create the Required Custom Object and Fields

I created the required custom object and custom fields to store or support the pricing configuration used in the scenario.

The fields were designed to support the required business inputs, such as the applicable discount percentage, eligibility criteria, and customer Account Type.

The exact object and field API names depend on the implementation in my org.

**Configuration considerations:**
- Store the relevant discount percentage or pricing input.
- Identify the Account Type used by the business rule.
- Ensure that the pricing process can access the required customer and product information.
- Verify that the fields are populated and available to the pricing logic.

## 6. Step 3: Create the Decision Table

I created a decision table to evaluate the discount eligibility conditions.

The decision table evaluates the customer Account Type and the discount eligibility criteria to determine whether the 10% discount should apply.

### Decision Table Logic

| Account Type | Customer Eligible? | Discount Result |
|---|---|---:|
| Government | Yes | 0% |
| Government | No | 0% |
| Non-Government | Yes | 10% |
| Non-Government | No | 0% |

The Government exclusion takes priority over the general discount eligibility condition.

I configured the decision table inputs and outputs so the pricing process can retrieve the applicable discount result.

**Expected output:**
- Government Account Type → 0% discount.
- Eligible non-Government customer → 10% discount.
- Other non-qualifying customer → 0% discount.

## 7. Step 4: Configure the Pricing Procedure

I configured the pricing procedure to calculate the final product price using the list price and the discount result.

The pricing procedure uses the required pricing elements and the output of the decision table to determine the final price.

### Pricing Procedure Flow

1. Retrieve the product list price.
2. Retrieve the relevant customer Account Type.
3. Evaluate the discount eligibility through the decision table.
4. Return the applicable discount percentage.
5. Calculate the discount amount.
6. Subtract the discount from the list price.
7. Return the final calculated price.

The procedure must be configured so the Government exclusion is evaluated before the discount is applied.

## 8. Step 5: Configure Pricing Inputs and Values

I configured the pricing inputs and values required for the calculation, including the list price and the discount percentage.

The configured values provide the information required by the decision table and pricing procedure.

### Example Calculation

For an eligible non-Government customer:

- List Price = ₹10,000
- Discount Rate = 10%
- Discount Amount = ₹10,000 × 10% = ₹1,000
- Final Price = ₹10,000 − ₹1,000 = ₹9,000

For a Government customer:

- List Price = ₹10,000
- Discount Rate = 0%
- Discount Amount = ₹0
- Final Price = ₹10,000

## 9. Step 6: Test the Pricing Implementation

I tested the pricing logic with different customer Account Types to verify that the discount was applied correctly.

| Test Case | Account Type | Expected Discount | Expected Final Price |
|---|---|---:|---:|
| 1 | Government | 0% | ₹10,000 |
| 2 | Commercial | 10% | ₹9,000 |
| 3 | Individual | 10%, if eligible | ₹9,000 |
| 4 | Non-Government customer not eligible for the offer | 0% | ₹10,000 |

The expected results depend on the eligibility conditions configured in the decision table.

I verified that the Government exclusion was respected and that the final price was calculated correctly for eligible and non-eligible customers.

