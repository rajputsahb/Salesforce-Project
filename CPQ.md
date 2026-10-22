# Data Quality Manager – Salesforce Project

## 1. Project Overview

I developed a Salesforce application called **Data Quality Manager** to identify duplicate records and missing field values during bulk data processing. The application helps improve data quality by detecting potential issues in Account and Contact records.

The application uses custom objects, custom fields, Lightning Web Components (LWC), Apex classes, and Apex test classes to identify and track data quality issues.

The main objective of this project is to help Salesforce administrators and users identify duplicate records and incomplete data more efficiently, especially when working with bulk uploads.

## 2. Project Objectives

I developed this project to achieve the following objectives:

- Identify duplicate Account records based on the Phone field.
- Identify duplicate Contact records based on the Email field.
- Detect missing or blank values in selected fields.
- Store detected data quality issues in a dedicated custom object.
- Track duplicate records and data quality issues within Salesforce.
- Provide a user-friendly interface using Lightning Web Components.
- Process bulk data while following Salesforce governor limits and bulkification best practices.
- Maintain code quality through Apex test classes.

## 3. Salesforce Application Structure

I created a Salesforce application containing four objects: Account, Contact, Data Quality Issue, and Duplicate Record.

| Object | Purpose |
|---|---|
| Account | Stores account information and is checked for duplicate phone numbers and missing required business fields. |
| Contact | Stores contact information and is checked for duplicate email addresses and missing required business fields. |
| Data Quality Issue | Stores information about detected data quality problems, such as missing values or incomplete records. |
| Duplicate Record | Stores information about duplicate records identified during validation, including the relevant record references and duplicate criteria. |

The Account and Contact objects are standard Salesforce objects. The Data Quality Issue and Duplicate Record objects are custom objects created for this application.

I also created custom fields on the relevant objects to support duplicate detection, issue tracking, and record identification.

## 4. Custom Objects and Fields

I learned how to create custom objects and custom fields to support the business requirements of the Data Quality Manager application.

### Account
- Used the standard Phone field to identify potential duplicate Account records.
- Checked selected fields for missing or blank values.
- Used Account records as the source data for validation.

### Contact
- Used the standard Email field to identify potential duplicate Contact records.
- Checked selected fields for missing or blank values.
- Used Contact records as the source data for validation.

### Data Quality Issue
- Created a custom object to store detected data quality issues.
- Used appropriate custom fields to capture the issue type, related record, missing field details, and issue status, according to the configured schema.

### Duplicate Record
- Created a custom object to store duplicate detection results.
- Used appropriate fields to capture the duplicate criteria and references to the records involved, according to the configured schema.

## 5. Duplicate Detection Logic

I implemented duplicate detection logic to identify records that share the same values in selected fields.

### Account Duplicate Detection
- Used the Account Phone field as the matching criterion.
- Compared phone numbers across Account records.
- Identified records that matched the configured phone-number criteria.
- Created duplicate issue records so the detected matches could be reviewed.

### Contact Duplicate Detection
- Used the Contact Email field as the matching criterion.
- Compared email addresses across Contact records.
- Identified records that matched the configured email criteria.
- Created duplicate issue records so the detected matches could be reviewed.

### Example

| Object | Matching Field | Example | Expected Result |
|---|---|---|---|
| Account | Phone | `9876543210` appears on two Accounts | Flag a potential duplicate |
| Contact | Email | `user@example.com` appears on two Contacts | Flag a potential duplicate |

I designed the validation around the selected business matching fields. The exact matching behavior depends on the implemented comparison rules, including whether values are normalized before comparison.

## 6. Missing Field Detection

I implemented validation logic to identify records with missing or blank values in selected fields.

**The process includes:**
- Checking configured fields for null or blank values.
- Identifying incomplete Account and Contact records.
- Recording the issue type and related record.
- Storing the detected issue in the Data Quality Issue custom object.
- Making the issue available for review and correction.

For example, if an Account is missing a required business field or a Contact has a blank value in a field selected for validation, the application can record the missing-field issue.

The fields considered missing are determined by the validation rules configured in the application.

## 7. Lightning Web Component (LWC)

I developed a Lightning Web Component to provide a user interface for working with the Data Quality Manager application.

The LWC serves as the presentation layer and allows users to interact with the application's data quality functionality.

**Key responsibilities include:**
- Providing a user-friendly interface for data quality operations.
- Invoking Apex methods to perform validation or retrieve issue information.
- Displaying duplicate detection results and missing-field issues, where implemented.
- Helping users review the results of data quality checks.

The LWC communicates with Apex classes to execute the server-side logic and display the relevant results.

## 8. Apex Classes and Test Classes

I developed three Apex classes to implement the application's server-side functionality, along with Apex test classes to validate the business logic.

The classes are organized to support data validation, duplicate detection, issue management, and communication with the LWC, according to the implementation.

### Apex Development
- Implemented the server-side business logic.
- Used SOQL to retrieve and compare relevant records.
- Applied bulkification practices to support multiple records.
- Used appropriate exception handling and validation.
- Followed Salesforce governor-limit considerations.

### Apex Test Classes
- Created test methods to validate duplicate Account detection.
- Created test methods to validate duplicate Contact detection.
- Tested missing-field scenarios.
- Validated the creation of data quality issue records.
- Tested bulk scenarios and relevant edge cases.
- Verified expected behavior using assertions.

The test classes help confirm that the Apex logic behaves as expected and provide code coverage for deployment and packaging requirements.

## 9. Bulk Data Processing

I designed the application to support data quality validation for bulk data scenarios, such as importing multiple Account and Contact records.

**Bulk-processing considerations include:**
- Processing collections of records instead of relying on single-record assumptions.
- Avoiding SOQL queries inside loops.
- Avoiding DML operations inside loops.
- Using collections such as Sets and Maps for efficient matching.
- Inserting detected issue records in bulk.
- Considering governor limits when processing large data volumes.

The application can validate records created through bulk data loading, provided the relevant Apex or automation entry points are configured to run during that process. For very large datasets, processing may need to be split into manageable batches.

## 10. End-to-End Project Flow

1. Account and Contact records are uploaded or inserted in bulk.
2. The configured validation logic checks Account Phone values for potential duplicates.
3. The configured validation logic checks Contact Email values for potential duplicates.
4. The application checks selected fields for missing or blank values.
5. Duplicate findings are stored in the Duplicate Record custom object.
6. Missing-field and other configured data quality findings are stored in the Data Quality Issue custom object.
7. The LWC provides an interface to review the results, according to the implemented features.
8. Users can review the findings and take appropriate corrective action.

## 11. Salesforce Best Practices Applied

During this project, I focused on the following Salesforce development practices:

- **Bulkification:** Designed Apex logic to handle multiple records efficiently.
- **Governor-limit management:** Reduced unnecessary SOQL queries and DML operations.
- **Reusable Apex logic:** Organized server-side logic into Apex classes.
- **LWC integration:** Used Apex methods to connect the UI with business logic.
- **Test coverage:** Created Apex test classes to validate the expected behavior.
- **Data quality tracking:** Used dedicated custom objects to record detected issues.
- **Maintainability:** Separated data storage, business logic, and user-interface responsibilities.

## 12. Overall Learning Summary

Through this project, I gained practical experience in developing a Salesforce data quality application using standard objects, custom objects, custom fields, Lightning Web Components, Apex classes, and Apex test classes.

I learned how to identify potential duplicate Account records using phone numbers, detect duplicate Contact records using email addresses, and identify missing field values. I also explored how to store validation results in dedicated custom objects and design bulk-aware Apex logic for data processing.

This project strengthened my understanding of Salesforce application development, Apex programming, LWC integration, data validation, bulk processing, testing, and governor-limit management.