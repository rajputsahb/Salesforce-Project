# Salesforce Cross-Org Account Creation Using Screen Flow

## Project Overview

This project demonstrates how to create an Account in one Salesforce org from another Salesforce org using **Screen Flow, Apex, REST API, Named Credential, and authentication configuration**.

The user enters an Account Name in a Screen Flow in the source org. When the user clicks the **Create** button, the Flow calls an Apex class. The Apex class sends the Account details to another Salesforce org through a secure API integration.

The target Salesforce org receives the API request through an Apex REST API class and creates the Account record.

---

## Project Components

### 1. Screen Flow – Source Org

* Provides a screen where the user can enter an Account Name.
* Contains a **Create** button.
* Calls the Apex class when the user submits the screen.
* Displays the result returned by the Apex action.

### 2. Apex – Source Org

* Contains the API integration logic.
* Receives the Account Name from the Screen Flow.
* Uses the Named Credential to make a callout to the target Salesforce org.
* Sends the Account information through a REST API request.
* Handles the response received from the target org.

### 3. Authentication and Integration – Source Org

* **Named Credential:** Defines the endpoint used for the callout.
* **Auth Provider:** Supports the authentication configuration for connecting to the target org.

### 4. Apex REST API – Target Org
* Used the SalesforceAccessFromIntegration  Apex class for target org.
* Exposes an API endpoint to receive the Account information.
* Accepts the request sent by the source org.
* Processes the Account details.
* Creates the Account record in the target Salesforce org.
* Returns the response to the source org.

### 5. External Credential – Target Org

* Configured as part of the authentication setup for the integration.
* Supports secure authentication based on the configured credential and principal settings.

---

## Integration Flow

1. The user opens the Screen Flow in the source Salesforce org.
2. The user enters an Account Name.
3. The user clicks the **Create** button.
4. The Screen Flow calls the source-org Apex class.
5. The Apex class uses the Named Credential and authentication configuration to send the API request.
6. The target org receives the request through its Apex REST API class.
7. The target org creates the Account record.
8. The target org returns the response to the source org.
9. The Flow displays the result to the user.

---

## Example

### Input in the Screen Flow

```text
Account Name: ABC Technologies
```

### Expected Result

An Account named `ABC Technologies` is created in the target Salesforce org.

---

## Technologies Used

* Salesforce Screen Flow
* Apex
* Apex REST API
* REST API Integration
* Named Credential
* External Credential
* Auth Provider
* Salesforce-to-Salesforce Integration
* VS Code
* Salesforce CLI
* Git and GitHub

---

## Security

* Authentication is managed using Salesforce credential configuration.
* Named Credentials are used for secure callouts.
* Sensitive information such as passwords, access tokens, and client secrets should not be committed to GitHub.

---

## Project Structure

```text
force-app/
└── main/
    └── default/
        ├── classes/
        │   ├── SalesforceIntegrationController.cls
        │   └── TargetOrgAccountApi.cls
                
        │
        ├── flows/
        │   └── AccountCreationFlow.flow-meta.xml
        │
        ├── namedCredentials/
        ├── externalCredentials/
        └── authproviders/
```


