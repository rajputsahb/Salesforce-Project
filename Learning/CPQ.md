### Salesforce Revenue Cloud & CPQ – Product Configuration Business Logic

### 1. Implementing Dynamic Product Attribute Logic

I implemented a business scenario in Salesforce Revenue Cloud and applied the same configuration logic in Salesforce CPQ to control product attributes dynamically based on user selections. The objective was to configure an iPhone product with RAM and Color attributes and ensure that the available RAM options change according to the selected color.

### Business Requirement

The iPhone product has the following configuration attributes:
- RAM: 4 GB, 8 GB, 12 GB
- Color: Black, White, Yellow

## I implemented the following business logic:

- When the user selects Black, only 4 GB and 8 GB RAM options are available, 12 GB is hidden or disabled, and 8 GB RAM is automatically selected.
- When the user selects White or Yellow, all three RAM options (4 GB, 8 GB, and 12 GB) are available, and no RAM option is automatically selected.

### Implementation in Salesforce Revenue Cloud

I worked on configuring product attributes and business rules to control the available RAM options based on the selected color. I explored how attribute definitions, attribute picklists, and configuration rules can be used to manage product configuration behavior and enforce the required business conditions.

### Implementation in Salesforce CPQ

I applied the same business logic in Salesforce CPQ to dynamically control the available RAM options based on the selected iPhone color. I worked on configuring the required product attributes and Product Rules to restrict incompatible selections and automatically select the appropriate RAM option when Black is chosen.

### Expected Result

Selected Color	Available RAM	Default RAM
Black	4 GB, 8 GB	8 GB
White	4 GB, 8 GB, 12 GB	None
Yellow	4 GB, 8 GB, 12 GB	None

### Overall Learning Summary
I implemented and tested dynamic product configuration logic in Salesforce Revenue Cloud and Salesforce CPQ. This exercise helped me understand how product attributes, configuration rules, and Product Rules can be used to control attribute availability, restrict incompatible combinations, and automatically select default values based on business requirements.