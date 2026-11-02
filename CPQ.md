# Salesforce SOQL Interview Practice and Revenue Cloud – Usage-Based Pricing

## 1. Practicing Interview-Related SOQL Queries

I worked on practicing Salesforce SOQL queries that are commonly asked in experienced Salesforce Developer and CPQ/Revenue Cloud interviews.

The main objective was to improve my understanding of relationship queries, aggregate functions, filtering, subqueries, and complex data retrieval scenarios.

### Key SOQL Concepts I Practiced

- Parent-to-child relationship queries.
- Child-to-parent relationship queries.
- Aggregate functions such as COUNT(), SUM(), AVG(), MIN(), and MAX().
- GROUP BY and HAVING clauses.
- Semi-joins and anti-joins using IN and NOT IN.
- AggregateResult handling in Apex.
- Date-based filtering.
- Complex queries involving Account, Contact, and Opportunity records.
- SOQL limitations and scenarios where Apex is required.

### Example 1: Accounts Having More Than 5 Contacts

```sql
SELECT AccountId, COUNT(Id)
FROM Contact
WHERE AccountId != NULL
GROUP BY AccountId
HAVING COUNT(Id) > 5
```

**Learning:** I learned how to use GROUP BY and HAVING to identify Account records that have more than five related Contacts.

### Example 2: Accounts Having Opportunities but No Contacts

```sql
SELECT Id, Name
FROM Account
WHERE Id IN (
    SELECT AccountId
    FROM Opportunity
    WHERE AccountId != NULL
)
AND Id NOT IN (
    SELECT AccountId
    FROM Contact
    WHERE AccountId != NULL
)
```

**Learning:** I learned how to use semi-join and anti-join queries to retrieve Accounts that have Opportunities but do not have Contacts.

### Example 3: Total Opportunity Amount by Account

```sql
SELECT AccountId, SUM(Amount)
FROM Opportunity
WHERE AccountId != NULL
GROUP BY AccountId
```

**Learning:** I learned how to use aggregate functions to calculate the total Opportunity Amount for each Account.

### Example 4: Accounts Having Open Opportunities

```sql
SELECT Id, Name
FROM Account
WHERE Id IN (
    SELECT AccountId
    FROM Opportunity
    WHERE IsClosed = false
    AND AccountId != NULL
)
```

**Learning:** I learned how to retrieve Accounts based on conditions applied to their related Opportunity records.

### Example 5: Opportunities with Account and Contact Details

```sql
SELECT Id, Name, StageName, Amount,
       Account.Name,
       Account.Phone
FROM Opportunity
WHERE IsClosed = false
```

**Learning:** I learned how to retrieve parent Account information from Opportunity records using child-to-parent relationship queries.

### Additional Learning: When to Use Apex Instead of SOQL

I also learned that certain reporting requirements cannot be handled by a single SOQL query.

For example, retrieving Accounts along with multiple child collections and applying aggregate conditions across different child relationships may require separate aggregate queries and Apex processing.

In such scenarios, I can:
- Execute separate SOQL queries.
- Store the results in Maps and Sets.
- Process the data in Apex.
- Build the required output structure.
- Return the result to an LWC or another calling component.

This helped me understand the difference between SOQL data retrieval and Apex-based data processing.

---

## 2. Learning About Usage-Based Products in Revenue Cloud

I explored Usage-Based Products in Salesforce Revenue Cloud and how businesses can charge customers based on their actual consumption of products or services.

Unlike traditional subscription products, usage-based products calculate charges according to measured consumption, such as API requests, transactions, storage, or data usage.

### Why We Use Usage-Based Products

- To charge customers according to actual consumption.
- To support pay-as-you-go pricing models.
- To configure predefined usage allowances or commitments.
- To support different pricing models based on usage.
- To calculate charges using usage records and configured pricing rules.

### Example

A company provides an API service and charges ₹2 for every 1,000 API requests.

If a customer consumes 50,000 requests:

- Total Usage = 50,000 requests.
- Billing Unit = 1,000 requests.
- Rate = ₹2 per unit.
- Total Charge = ₹100.

---

## 3. Usage-Based Product Rate Card Types

I learned about different Rate Card types used in Revenue Cloud to define how usage consumption is priced.

A Rate Card helps represent the pricing configuration for a usage-based offering. The available rate card types and their behavior depend on the Revenue Cloud implementation.

### Key Points I Learned

- Understand the purpose of Rate Cards in usage-based pricing.
- Review the different rate card configurations available.
- Understand how rate cards determine the applicable usage rates.
- Identify the relationship between Rate Cards, Rate Card Entries, and usage-based products.
- Understand how different pricing methods can support different consumption models.

### Learning Outcome

I understood how Rate Cards provide a structured way to define usage pricing and how the applicable rate configuration is used to calculate customer charges.

---

## 4. Usage-Based Product

I learned how Usage-Based Products represent products or services where the customer is charged according to the amount consumed.

### Key Points I Learned

- Create or configure a product for usage-based selling.
- Understand the relationship between the product and its usage configuration.
- Configure the applicable usage measurement.
- Associate the required usage resource and usage definition.
- Review the applicable pricing and billing configuration.
- Validate usage-based charges through the billing process.

### Example

A customer purchases an API usage-based service.

| Configuration | Value |
|---|---|
| Product | API Service |
| Usage Metric | API Requests |
| Billing Unit | 1,000 Requests |
| Rate | ₹2 |
| Total Usage | 50,000 Requests |
| Calculated Charge | ₹100 |

**Learning Outcome:** I learned how usage-based products support consumption-based business models and how their pricing depends on recorded usage.

---

## 5. Rate Card

I learned about the Rate Card and how it is used to organize and define pricing rates for usage-based products.

A Rate Card represents a pricing structure that contains the applicable rates used to calculate charges based on customer consumption.

### Key Points I Learned

- Understand the purpose of a Rate Card.
- Review the relationship between a Rate Card and its entries.
- Understand how a Rate Card is associated with the relevant usage pricing configuration.
- Review the applicable pricing units and rates.
- Validate whether the correct Rate Card is used during pricing.

### Example

A Rate Card for an API service may contain different rates based on consumption levels.

| Usage Range | Rate per 1,000 Requests |
|---|---:|
| 1–10,000 | ₹5 |
| 10,001–50,000 | ₹3 |
| Above 50,000 | ₹2 |

The configured pricing behavior determines how these rates are applied to customer consumption.

**Learning Outcome:** I understood how Rate Cards organize usage rates and support flexible usage-based pricing.

---

## 6. Rate Card Entry

I learned about Rate Card Entries and how individual entries define the applicable pricing information within a Rate Card.

A Rate Card Entry can represent a specific rate or pricing condition based on the configured usage range, unit, or other pricing criteria.

### Key Points I Learned

- Understand the relationship between a Rate Card and its Rate Card Entries.
- Configure or review individual pricing entries.
- Identify the applicable usage range and rate.
- Understand how entries contribute to the overall pricing structure.
- Validate the selected entry during usage pricing.

### Example

A Rate Card contains the following entries:

| Rate Card Entry | Usage Range | Rate |
|---|---|---:|
| Entry 1 | 1–10,000 requests | ₹5 |
| Entry 2 | 10,001–50,000 requests | ₹3 |
| Entry 3 | Above 50,000 requests | ₹2 |

**Learning Outcome:** I learned how Rate Card Entries define individual pricing conditions and how they support multiple rates within a single Rate Card.

---

## 7. Rate Adjustment by Tier

I learned about Rate Adjustment by Tier and how pricing can be adjusted based on predefined usage levels or consumption ranges.

Tier-based adjustments help businesses offer different rates depending on how much a customer consumes.

### Key Points I Learned

- Understand how usage tiers are defined.
- Configure or review different pricing levels.
- Understand how rates change when consumption reaches a particular tier.
- Evaluate the impact of each tier on the final usage charge.
- Validate the calculation against the configured pricing rules.

### Example

A company provides a cloud storage service with the following tier-based rates:

| Usage Tier | Rate per GB |
|---|---:|
| First 100 GB | ₹10 |
| Next 100 GB | ₹8 |
| Above 200 GB | ₹6 |

If a customer consumes 250 GB:

- First 100 GB × ₹10 = ₹1,000.
- Next 100 GB × ₹8 = ₹800.
- Remaining 50 GB × ₹6 = ₹300.

**Total Usage Charge = ₹2,100.**

### Learning Outcome

I understood how tier-based rate adjustments support different prices for different consumption ranges and how the final charge is calculated.

---

## 8. Rate Adjustment by Attribute

I learned about Rate Adjustment by Attribute and how usage pricing can be adjusted according to specific product or usage attributes.

Instead of applying pricing only according to consumption quantity, the system can use configured attributes to determine the applicable rate adjustment.

### Key Points I Learned

- Understand how pricing attributes influence usage charges.
- Identify the attributes used for pricing decisions.
- Review the relationship between attributes and rate adjustments.
- Configure or review attribute-based pricing conditions.
- Validate the final rate based on the selected attribute values.

### Example

A company provides cloud storage services with different service levels.

| Service Level | Base Rate per GB |
|---|---:|
| Standard | ₹10 |
| Premium | ₹15 |
| Enterprise | ₹20 |

If a customer selects the Premium service level and consumes 100 GB:

- Selected Attribute = Premium.
- Rate = ₹15 per GB.
- Usage = 100 GB.
- Total Charge = ₹1,500.

The applicable rate is determined by the configured attribute-based pricing logic.

### Learning Outcome

I learned how Rate Adjustment by Attribute supports flexible pricing based on product characteristics or other configured usage attributes.

---

## 9. Comparison of Usage-Based Pricing Concepts

| Concept | Purpose |
|---|---|
| Usage-Based Product | Product charged according to customer consumption |
| Rate Card | Organizes the usage pricing configuration |
| Rate Card Entry | Defines an individual rate or pricing condition |
| Rate Adjustment by Tier | Adjusts pricing based on consumption ranges |
| Rate Adjustment by Attribute | Adjusts pricing based on configured attribute values |

