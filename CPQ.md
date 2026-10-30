# Salesforce Revenue Cloud – Scenario-Based Pricing, Billing, and Invoice Management

## 1. Project Overview

In this learning activity, I worked on four practical, scenario-based business requirements in Salesforce Revenue Cloud. The objective was to understand how to configure pricing, troubleshoot billing issues, correct invoice discrepancies, and modify billing frequencies.

The four scenarios covered:

1. Tiered Pricing – Different prices for different quantity ranges.
2. Invoice Generation Troubleshooting – Investigating why an invoice is not generated after order activation.
3. Invoice Correction – Correcting an overcharged invoice using a Credit Memo.
4. Billing Frequency Change – Changing annual billing to monthly billing.

---

## 2. Scenario 1: Tiered Pricing Based on Product Quantity

### Business Requirement

A customer wants to purchase 100 units of a product.

- First 50 units cost ₹100 each.
- Next 50 units cost ₹80 each.
- The pricing should automatically calculate the total based on the quantity purchased.

### Objective

I worked on implementing tiered pricing in Revenue Cloud so that different unit prices are applied to different quantity ranges.

### Step 1: Understand the Pricing Requirement

I first analyzed the quantity ranges and their corresponding prices.

| Quantity Range | Unit Price |
|---|---:|
| First 50 units | ₹100 |
| Next 50 units | ₹80 |

### Step 2: Configure the Product and List Price

I configured the product and its base pricing information.

- Created or selected the required product.
- Configured the product's pricing details.
- Verified that the product was available for the required selling process.
- Prepared the pricing configuration for quantity-based calculation.

### Step 3: Configure Tiered Pricing

I configured the quantity-based pricing logic using the supported pricing configuration in Revenue Cloud.

The pricing logic needs to evaluate the ordered quantity and apply the corresponding price to each quantity range.

For this scenario, the calculation is:

- First 50 units × ₹100 = ₹5,000.
- Next 50 units × ₹80 = ₹4,000.
- Total price = ₹9,000.

### Step 4: Validate the Pricing Calculation

| Quantity | Applied Unit Price | Total |
|---|---:|---:|
| 50 units | ₹100 | ₹5,000 |
| 50 units | ₹80 | ₹4,000 |
| **100 units** | | **₹9,000** |

### Additional Test Scenarios

| Test Scenario | Expected Result |
|---|---|
| Purchase 25 units | 25 × ₹100 = ₹2,500 |
| Purchase 50 units | 50 × ₹100 = ₹5,000 |
| Purchase 75 units | ₹5,000 + ₹2,000 = ₹7,000 |
| Purchase 100 units | ₹5,000 + ₹4,000 = ₹9,000 |

**Important:** This scenario uses graduated or slab pricing, where each price applies only to the units within its respective quantity range. It is different from volume pricing where the entire quantity may receive the price of the applicable tier.

### Learning Outcome

I learned how to implement tiered pricing in Revenue Cloud and calculate the total price by applying different unit prices to different quantity ranges.

---

## 3. Scenario 2: Order Activated but Invoice Not Generated

### Business Requirement

A customer purchases an annual subscription for ₹1,20,000. The order is activated, but the invoice is not generated.

The business wants to identify the reason and resolve the billing issue.

### Objective

I worked on understanding the end-to-end billing process and troubleshooting the reasons why an activated order might not generate an invoice.

### Step 1: Verify the Order Status

I first checked whether the order was successfully activated.

I reviewed:
- Order status.
- Order activation date.
- Order products.
- Product quantities.
- Order item status.
- Billing-related configuration.

An activated order does not always mean that an invoice has already been generated. The relevant billing process must also be completed.

### Step 2: Verify the Billing Configuration

I checked whether the product and order item had the required billing configuration.

I reviewed:
- Billing policy.
- Billing treatment.
- Billing frequency.
- Billing type.
- Billing commencement date.
- Billing schedule configuration.

If the billing configuration is missing or incorrect, invoice generation may not proceed as expected.

### Step 3: Verify the Billing Schedule

I checked whether a billing schedule or the applicable billing schedule records had been created.

I verified:
- Whether the billing schedule exists.
- Whether the billing date has arrived.
- Whether the scheduled amount is correct.
- Whether the billing schedule is eligible for processing.
- Whether the schedule has already been processed.

### Step 4: Check Billing Batch Processing

I investigated whether the billing batch or scheduled billing process had run successfully.

I checked:
- Whether the billing job was executed.
- Whether the relevant billing records were selected.
- Whether any records failed during processing.
- Whether error messages were available.
- Whether the billing batch completed successfully.

### Step 5: Check Invoice Generation Conditions

I verified whether the billing records satisfied the conditions required for invoice generation.

Possible reasons include:

- Billing commencement date has not arrived.
- Billing schedule has not been generated.
- Billing schedule is not eligible for processing.
- Required billing configuration is missing.
- Billing batch processing failed.
- Invoice generation encountered a validation or processing error.

### Step 6: Resolve and Validate the Issue

After identifying the root cause, I corrected the relevant configuration or processing issue.

I then:
1. Revalidated the billing configuration.
2. Confirmed that the billing schedule was eligible.
3. Reprocessed the billing records using the supported billing process.
4. Verified that the invoice was generated.
5. Checked the invoice amount and customer details.

### Example

| Description | Value |
|---|---:|
| Subscription Amount | ₹1,20,000 |
| Subscription Term | 12 Months |
| Billing Frequency | Annual |
| Expected Annual Invoice | ₹1,20,000 |

### Learning Outcome

I learned how to troubleshoot invoice-generation issues by checking order activation, billing configuration, billing schedules, billing batch processing, and invoice-generation conditions.

---

## 4. Scenario 3: Correcting an Overcharged Invoice Using a Credit Memo

### Business Requirement

An invoice for ₹50,000 has already been generated. Later, the business discovers that ₹5,000 was overcharged.

The business needs to correct the invoice and reduce the customer's outstanding balance.

### Objective

I worked on understanding how to correct an already-generated invoice using a Credit Memo rather than directly changing the original invoice amount.

### Step 1: Identify the Invoice

I located the invoice that contained the incorrect charge.

I reviewed:
- Invoice number.
- Customer details.
- Invoice date.
- Invoice line items.
- Original invoice amount.
- Current payment status.

### Step 2: Identify the Overcharged Amount

I verified the incorrect amount and calculated the required adjustment.

| Description | Amount |
|---|---:|
| Original Invoice | ₹50,000 |
| Incorrectly Charged Amount | ₹5,000 |
| Correct Amount | ₹45,000 |

### Step 3: Create a Credit Memo

I initiated the Credit Memo creation process using the supported invoice or billing workflow.

I selected the relevant invoice and entered the credit information.

Typical details include:
- Reference invoice.
- Customer or billing account.
- Credit Memo date.
- Credit reason.
- Invoice line being adjusted.
- Credit amount.

### Step 4: Add the Credit Amount

I entered ₹5,000 as the credit amount for the identified overcharge.

I verified that the credit was associated with the correct invoice and billing line.

### Step 5: Validate and Complete the Credit Memo

I reviewed the Credit Memo details and completed the applicable submission, approval, or posting process.

I checked:
- Credit Memo amount.
- Reference invoice.
- Credit reason.
- Credit Memo status.
- Whether the credit was applied to the intended invoice.

### Step 6: Verify the Updated Balance

After applying the credit, I verified the updated invoice balance.

| Description | Amount |
|---|---:|
| Original Invoice | ₹50,000 |
| Credit Memo | ₹5,000 |
| Adjusted Amount Due | ₹45,000 |

This calculation assumes that the invoice has not already been paid and that the credit is applied directly against the invoice.

If the invoice has already been paid, the credit may instead result in a customer credit balance or refund, depending on the configured financial process.

### Learning Outcome

I learned how to correct an overcharged invoice using a Credit Memo, maintain the original invoice history, and validate the adjusted customer balance.

---

## 5. Scenario 4: Changing Annual Billing to Monthly Billing

### Business Requirement

A customer is currently billed annually, but the business wants to change the billing frequency to monthly.

The objective is to change the billing arrangement while maintaining the correct subscription amount and billing periods.

### Objective

I worked on understanding how billing frequency can be changed in Revenue Cloud by reviewing the existing subscription, billing schedule, and applicable billing configuration.

### Step 1: Identify the Existing Subscription

I located the customer's existing subscription or eligible commercial record.

I reviewed:
- Product details.
- Subscription start date.
- Subscription end date.
- Annual subscription amount.
- Existing billing frequency.
- Existing billing schedule.

### Step 2: Review the Existing Billing Configuration

I checked the billing policy and relevant billing configuration to identify where the annual billing frequency was defined.

I reviewed:
- Billing frequency.
- Billing period.
- Billing commencement date.
- Billing schedule.
- Existing invoice and payment status.

### Step 3: Determine the Monthly Billing Amount

I calculated the monthly amount based on the annual subscription value.

Example:

- Annual Subscription Amount = ₹1,20,000.
- Billing Frequency = Monthly.
- Number of Months = 12.
- Monthly Amount = ₹10,000.

Calculation:

₹1,20,000 ÷ 12 = ₹10,000 per month.

### Step 4: Implement the Billing Frequency Change

I reviewed the supported process for changing the billing arrangement.

Depending on the existing subscription and Revenue Cloud configuration, the change may require an amendment, a supported billing schedule update, or a new commercial arrangement.

The implementation includes:

1. Identify the subscription eligible for the change.
2. Review the existing billing policy and billing frequency.
3. Apply the appropriate commercial change process.
4. Configure monthly billing for the eligible future billing periods.
5. Review the effective date of the change.
6. Regenerate or update the applicable billing schedules through the supported process.
7. Verify that the annual amount is correctly allocated across the monthly periods.

I also checked whether previously generated invoices need to remain unchanged and ensured that the change applies to the intended future billing periods.

### Step 5: Validate Monthly Billing

I verified that the new billing schedule generated the expected monthly amounts.

| Billing Period | Expected Amount |
|---|---:|
| Month 1 | ₹10,000 |
| Month 2 | ₹10,000 |
| Month 3 | ₹10,000 |
| Month 4–12 | ₹90,000 |
| **Annual Total** | **₹1,20,000** |

### Step 6: Test the Billing Process

I tested the following scenarios:

| Test Scenario | Expected Result |
|---|---|
| Existing annual billing arrangement | Existing billing records remain accurate |
| Change to monthly billing | Future billing periods are monthly |
| First monthly billing run | ₹10,000 is billed |
| Subsequent monthly billing runs | ₹10,000 is billed per period |
| Verify annual total | ₹1,20,000, excluding taxes and adjustments |


---

