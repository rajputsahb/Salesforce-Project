# Salesforce Weather Forecast LWC

This project is a Salesforce Lightning Web Component (LWC) based Weather Forecast application.

The application allows a Salesforce user to enter a city name and retrieve the current weather conditions for that city from an external weather API.

The weather information is displayed inside a Lightning Web Component, including:

- City weather information
- Weather condition
- Weather icon such as sun, cloud, rain, etc.

The project demonstrates how Salesforce can securely integrate with an external REST API using Apex, Named Credentials, and External Credentials.

---

## Project Components

### Apex

- WeatherhandlerController
- Apex logic for retrieving weather information

### Lightning Web Components

- weatherLWCcomponent
- Allows users to enter a city
- Retrieves and displays weather information

### Integration

- External Credential
- Named Credential
- External Weather API integration

### Steps for Adding Trust Url

-Go to the setup and search for Trust Url.
-Click New button and the adding that url https://cdn.weatherapi.com.
-After that save it.
This Trust Url help to showing the image in LWC
 


## How to used that Component

###  City Search

The LWC provides an input field where the user can enter a city name.

Example:

```text
Enter City: Delhi

Then it show the that city weather information with and image.

## Project Structure

```text
force-app/
└── main/
    └── default/
        ├── classes/
        │   └── WeatherhandlerController.cls
        │
        ├── lwc/
        │   └── weatherLWCcomponent/
        │
        ├── externalCredentials/
        │
        └── namedCredentials/
