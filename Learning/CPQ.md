### Salesforce Revenue Cloud – Assetization, Amendments, Renewals, and Billing

### 1. Learning About Assetization in Revenue Cloud

I learned about Assetization in Salesforce Revenue Cloud and how it represents the process of creating and maintaining asset records for products or services purchased by customers.

An asset helps track the customer's purchased product or service after the sales transaction. It can contain information such as the product, customer, quantity, purchase details, status, and relevant dates.

Key Points I Learned

Understand how purchased products can be represented as customer assets.

Understand the relationship between orders, order items, contracts, and assets.

Learn how asset records help track products and services owned by customers.

Understand how assets support post-sale processes such as amendments and renewals.

Learn how asset information can be used to manage changes to a customer's existing subscription or product.

Example

A customer purchases 10 software licenses through a Salesforce Revenue Cloud sales process. After the relevant order fulfillment and asset-creation process, the customer’s purchased licenses can be represented as assets.

These asset records help the business identify the purchased products and manage eligible changes or renewals later.

### 2. Amending an Asset Product in Revenue Cloud

I learned how to amend an existing asset product in Revenue Cloud when a customer wants to change a previously purchased product or service.

An amendment is a change to an existing commercial arrangement. Depending on the supported business process, it may involve increasing or decreasing quantity, changing eligible product options, or modifying the service configuration.

### Steps I Learned

Identify the customer's existing asset and verify its status.

Review the related product, quantity, contract, and effective dates.

Start the supported amendment or change process for the asset or associated commercial agreement.

Select the product or asset that needs to be changed.

Update the permitted quantity, product configuration, or other eligible attributes.

Review pricing adjustments, prorations, and any applicable charges or credits.

Validate the amendment and complete the required approval or order process.

Confirm that the resulting asset and commercial records reflect the change.

### Example

A customer initially purchases 10 licenses at ₹1,000 per license per month. Later, the customer requests 5 additional licenses.

Original quantity: 10 licenses

Additional quantity: 5 licenses

New quantity: 15 licenses

Monthly unit price: ₹1,000

New monthly amount: ₹15,000, before applicable discounts and taxes

The amendment process records the change according to the product, contract, effective-date, and pricing rules configured in Revenue Cloud.

Learning Outcome

I understood how asset amendments support changes to existing customer purchases without necessarily creating an entirely new commercial relationship.

### 3. Renewal Process in Revenue Cloud

I learned how the renewal process allows a business to continue an eligible subscription or service beyond its existing term.

Renewals help businesses maintain customer subscriptions, extend service periods, and apply updated commercial terms when required.

### Steps I Learned

Identify the existing contract, subscription, or eligible asset.

Review the current term, end date, quantity, and renewal eligibility.

Initiate the configured renewal process.

Review the products and quantities proposed for renewal.

Apply the relevant renewal pricing, discounts, and commercial terms.

Generate or review the renewal quote or commercial proposal, depending on the configured workflow.

Obtain the required approvals and finalize the renewal transaction.

Complete the applicable order, contract, and subscription updates.

Verify the renewed term and relevant downstream records.

### Example

A customer has a software subscription for 10 licenses that expires on 31 December.

Existing subscription end date: 31 December

Renewal term: 12 months

Renewal start date: 1 January

Renewal end date: 31 December of the following year

The renewal process continues the eligible subscription for the next term according to the configured contract and renewal rules.

Learning Outcome

I learned how renewals differ from amendments: amendments change an existing commercial arrangement, while renewals extend an eligible arrangement into a subsequent term.

### 4. Billing Process in Revenue Cloud

I learned how billing converts eligible commercial transactions and billable events into billing records and customer invoices.

The billing process depends on the organization's product configuration, order and contract lifecycle, billing schedules, and billing policies.

Typical Billing Flow

Complete the relevant sales transaction and order process.

Identify the products or services eligible for billing.

Apply the applicable billing policy and billing treatment.

Determine the billing schedule and billing period.

Evaluate the billing trigger or commencement conditions.

Generate the applicable billing records or billing schedules.

Create billing documents or invoices through the configured billing process.

Review billing amounts, taxes, adjustments, and invoice details.

Validate the billing results and downstream accounting or payment integration, where configured.

### Example

A customer purchases an annual service for ₹12,000.

If the configured policy bills the service annually in advance, the business may generate a ₹12,000 billing amount at the beginning of the service term, subject to the configured billing rules and applicable taxes.

If the service is configured for monthly billing, the amount could instead be ₹1,000 per month, assuming equal monthly allocation and no additional charges.

Learning Outcome

I understood how billing connects commercial transactions with the generation of customer charges and billing documents.

### 5. Billing Policy

I learned about the Billing Policy in Revenue Cloud and how it defines the billing behavior applicable to eligible products or commercial transactions.

A billing policy helps determine how and when billing should occur based on the supported configuration and the relevant commercial terms.

Key Points I Learned

Understand how billing policies control configured billing behavior.

Identify the billing policy associated with a product or transaction.

Understand how billing timing and billing frequency can affect invoice generation.

Review how billing policies interact with billing schedules and billing treatments.

Validate that the billing configuration matches the business requirement.

### Example

A business offers two subscription products:

Product A is billed monthly.

Product B is billed annually in advance.

The applicable billing configuration determines how the billable amounts are scheduled and processed for each product.

Learning Outcome

I learned why billing policies are important for implementing consistent billing rules across products and commercial transactions.

### 6. Billing Policy Treatment

I learned about Billing Policy Treatment as part of understanding how Revenue Cloud applies billing-related configuration to eligible transactions.

The exact meaning and available fields depend on the Revenue Cloud edition and data model being used. In general, billing-related treatment configuration helps define how a particular billing scenario should be handled.

### Key Points I Learned

Understand the relationship between billing policies and their associated treatment configuration.

Review how the applicable billing treatment is determined for a transaction.

Understand how treatment configuration can affect billing behavior.

Validate the selected treatment against the product and commercial requirements.

Check the resulting billing records to confirm that the expected rules have been applied.

Example

A business sells a service that must be billed according to a configured recurring billing arrangement. The relevant billing policy and treatment configuration are reviewed to ensure that the transaction follows the intended billing process.

Learning Outcome

I learned to examine the billing policy and associated treatment configuration together when troubleshooting unexpected billing behavior.

### 7. Legal Entity

I learned about the Legal Entity concept in Revenue Cloud and its role in representing the legal organization responsible for a commercial transaction.

A legal entity can be relevant to contractual and financial operations, including the identification of the organization responsible for a sale or billing transaction, depending on the configured business process.

Key Points I Learned

Understand the purpose of legal entities in commercial operations.

Identify the legal entity associated with a transaction where applicable.

Understand how legal entity configuration can support different business units or legal organizations.

Review the relationship between legal entities, contracts, orders, and billing configuration where supported.

Validate that the correct legal entity is used for the intended transaction.

Example

A company operates through two legal entities:

ABC India Pvt. Ltd.

ABC US Inc.

A transaction for an Indian customer may be associated with ABC India Pvt. Ltd., while a transaction for a US customer may be associated with ABC US Inc., depending on the company's configured selling and billing rules.

Learning Outcome

I understood why legal entity configuration is important for managing commercial transactions across multiple legal organizations.

### 8. Billing Treatment Items

I learned about Billing Treatment Items and how billing-related item configuration can be used to represent specific billing rules or behaviors within the applicable Revenue Cloud data model.

The exact purpose and relationships of these items should be verified against the object's definition and configuration in the org.

Key Points I Learned

Review the purpose of the Billing Treatment Item record or configuration.

Understand its relationship with the relevant billing treatment.

Identify the fields that define the applicable billing behavior.

Review how the item participates in billing configuration.

Test the resulting billing output against the expected business rules.

Example

A business may have different billing requirements for recurring services and one-time implementation charges. The relevant billing configuration is reviewed to ensure each charge follows its intended treatment.

Learning Outcome

I learned to investigate billing treatment items as part of understanding and troubleshooting the billing configuration.

### 9. Milestone Type

I learned about Milestone Type as a concept used in milestone-based commercial or billing processes.

In milestone-based scenarios, billing can be associated with defined events or stages rather than being based only on a recurring calendar period.

Key Points I Learned

Understand the purpose of milestones in a commercial process.

Identify the configured milestone type and its intended behavior.

Understand how a milestone may be related to project progress, delivery, or completion.

Review whether the milestone must be achieved or approved before billing can proceed.

Validate the resulting billable event against the configured business process.

Example

A company delivers a project in three stages:

Milestone

Completion Condition

Example Billing Amount

Milestone 1

Project initiation

₹20,000

Milestone 2

Design approval

₹30,000

Milestone 3

Final delivery

₹50,000

Total



₹1,00,000

The amounts become billable according to the configured milestone conditions and billing rules.

Learning Outcome

I learned how milestone-based billing can align customer charges with defined stages of a project or service delivery.

### 10. Milestone Commencement Offset

I learned about the Milestone Commencement Offset concept while studying the timing of milestone-related billing.

A commencement offset generally represents a configured adjustment to a starting date or trigger. Its precise meaning, supported values, and calculation behavior depend on the specific Revenue Cloud field or configuration being used.

Key Points I Learned

Identify the commencement date or event used by the relevant billing process.

Review the configured offset and the unit in which it is measured.

Understand how the offset affects the timing of a milestone or billing event.

Validate the calculated dates against the expected business scenario.

Test boundary cases to ensure the offset does not produce unintended billing dates.

Example

If a configured billing process uses a commencement date of 1 January and a supported offset of 5 days, the resulting date may be 6 January if the configuration defines the offset as five calendar days after commencement.

This is an illustrative example; the actual calculation must be verified against the specific field's definition in the Salesforce org.

Learning Outcome

I learned to examine commencement dates and offsets when investigating unexpected milestone or billing dates.

### 11. Billing Period Item

I learned about the Billing Period Item concept as part of studying how billing periods are represented and used in the Revenue Cloud billing process.

Billing-period configuration is important when a transaction needs to be billed over defined periods, such as monthly, quarterly, or annually.

Key Points I Learned

Understand the purpose of billing periods in the configured billing process.

Review the relationship between billing periods and the relevant billing records.

Understand how period start and end dates affect billing calculations.

Check whether the transaction uses recurring, one-time, or milestone-based billing.

Validate that the generated billing periods align with the product's commercial terms.

