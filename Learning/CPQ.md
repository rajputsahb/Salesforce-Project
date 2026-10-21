### Salesforce Partner Community and Managed Package Management

### 1. Salesforce Partner Community

I learned how to access and use the Salesforce Partner Community, which provides resources for Salesforce partners to develop, manage, and distribute applications through the Salesforce ecosystem.

### Why We Use the Partner Community

To access partner resources and onboarding information.

To manage partner-related business and technical activities.

To explore AppExchange publishing and application distribution resources.

To access relevant partner tools and support, depending on account permissions.

To manage the partner organization's information and team access.

### Steps to Access the Partner Community

Open the official Salesforce partner portal.

Sign in using the appropriate Salesforce account or begin the partner registration process if required.

Complete the applicable onboarding steps.

Associate the correct partner organization where prompted.

Access the available partner resources and AppExchange-related tools.

Verify that the account has the permissions required for the intended activities.

Learning outcome: I understood the purpose of the Partner Community and how it supports partner onboarding and AppExchange-related activities.

### 2. Connecting to Different Salesforce Organizations

I learned how to connect multiple Salesforce organizations to Visual Studio Code using Salesforce CLI. This allows me to work with a development org, a packaging org, and a separate test or subscriber org.

## Why We Connect Different Orgs

To develop and maintain Salesforce components.

To create and manage package versions.

To install and test packages in a separate organization.

To validate the application in an environment similar to a customer's org.

To reduce the risk of testing changes only in the development environment.

### Steps I Followed

Open the Salesforce DX project in VS Code.

Open the integrated terminal.

Authorize the first Salesforce org.

Assign an alias, such as PackagingOrg.

Authorize the second Salesforce org with a different alias, such as PackageTestOrg.

Verify each connection.

Select the appropriate org when performing development or package installation tasks.

Example Commands

sf org login web --alias PackagingOrg
sf org login web --alias PackageTestOrg
sf org list
sf org display --target-org PackagingOrg

Learning outcome: I learned how to manage multiple Salesforce org connections and select the correct org for development, packaging, and testing.

### 3. First-Generation Managed Package (1GP)

I learned about First-Generation Packaging (1GP), the traditional Salesforce managed packaging model. In this model, the package is created and managed through a packaging org, and package components are maintained within that org.

## Key Characteristics

Uses a packaging org to create and maintain the managed package.

Package components are managed through Salesforce Setup and package management tools.

Package versions are created and distributed to subscriber orgs.

Supports managed application distribution and controlled upgrades.

Uses a registered namespace for the managed package.

Typical Workflow

Prepare the packaging org.

Register and configure the namespace.

Create the managed package.

Add the required components.

Upload a package version.

Install the package in a separate org.

Test functionality and manage future package releases.

Learning outcome: I understood the traditional packaging process and how a 1GP managed package is maintained and distributed.

### 4. Second-Generation Managed Package (2GP)

I learned about Second-Generation Packaging (2GP), which uses a source-driven development approach. The package source is maintained in a Salesforce DX project and can be tracked through version control systems such as Git.

### Key Characteristics

Uses Salesforce DX project structure and Salesforce CLI.

Stores package metadata in source files.

Supports source control and automated development workflows.

Creates package versions through Salesforce CLI.

Uses a Dev Hub and the appropriate namespace configuration.

Supports repeatable package builds and version-based distribution.

### Typical Workflow

Set up a Dev Hub-enabled org.

Register or configure the namespace for packaging.

Create a Salesforce DX project.

Prepare the sfdx-project.json package configuration.

Add the required Salesforce metadata.

Create the 2GP package.

Create a package version.

Install the package in a separate test org.

Validate functionality before distributing the package.

Comparison: 1GP vs. 2GP

Feature

1GP Managed Package

2GP Managed Package

Development approach

Primarily managed through the packaging org

Source-driven development

Main development tools

Salesforce Setup and supported packaging tools

Salesforce CLI, VS Code, and source control

Package source

Maintained in the packaging org

Maintained in a Salesforce DX project

Package version creation

Through the traditional package upload process

Through Salesforce CLI and package version creation

Dev Hub

Not the central packaging requirement in the traditional workflow

Required for 2GP package development

Source control

Can be used, but is not the core packaging model

Fits naturally into source-control workflows

Best suited for

Existing traditional managed packages

Modern, source-driven package development

Learning outcome: I understood the key differences between 1GP and 2GP and how 2GP supports source-driven development and repeatable package builds.

### 5. Installed Packages

I learned how to install a managed package into a Salesforce organization using a package installation link or package version identifier.

Why We Install Packages

To add reusable Salesforce functionality to another org.

To install custom objects, fields, Apex classes, LWCs, and other packaged components.

To test the application in a subscriber org.

To distribute functionality without manually deploying each component.

Steps I Followed

Create or identify the required managed package version.

Obtain the correct installation link or package version ID.

Log in to the target Salesforce org.

Open the installation link or use the supported CLI installation command.

Select the appropriate installation options.

Grant the required access to users or profiles, where applicable.

Complete the installation.

Verify the package under Setup → Installed Packages.

Test the installed functionality and permissions.

Example Salesforce CLI command:

sf package install --package <package-version-id> --target-org PackageTestOrg --wait 30

Learning outcome: I learned how to install a package into another Salesforce org and verify that the packaged components work correctly.

### 6. Package Management

I learned how Salesforce package management helps developers track package details, versions, installations, and upgrades.

Key Areas I Explored

Packages: Containers for related Salesforce components.

Package versions: Specific releases of a package.

Installed Packages: A Setup page for viewing packages installed in an org.

Package dependencies: Components or packages required by another package.

Package upgrades: Installing a newer compatible package version.

Subscriber orgs: Salesforce organizations where a package is installed.

Version testing: Validating the package before releasing it to customers.

General Package Management Process

Create or update the package source.

Create a new package version.

Validate installation and functionality.

Resolve dependency or metadata issues.

Install the tested version in the required orgs.

Plan upgrades and document changes for future releases.

Learning outcome: I understood how package versions and installations are managed throughout the Salesforce application lifecycle.

### 7. Namespace Settings

I learned about namespace prefixes and their importance in Salesforce managed packages. A namespace uniquely identifies a package's components and helps prevent naming conflicts with components created by other developers.

Why We Use a Namespace

To distinguish packaged components from components created by other organizations.

To reduce naming conflicts between applications.

To identify components that belong to a managed package.

To support the distribution of reusable applications.

Example

If the namespace is mycompany, a custom object in a managed package may have an API name such as:

mycompany__Customer_Record__c

A namespaced component's API name may appear differently depending on the component type and where it is referenced.

Key Points I Learned

Choose an appropriate namespace before creating the package.

Register the namespace through the supported Salesforce setup process.

Associate it with the appropriate packaging configuration.

Verify that the namespace and packaging org are configured correctly.

Understand that a registered namespace is generally not something that can simply be renamed later.

Learning outcome: I understood how namespace settings identify managed package components and why the namespace must be configured carefully.

### 8. Namespace Registries

I learned about namespace registration and how Salesforce associates a namespace prefix with an organization for supported packaging workflows.

Purpose of Namespace Registration

To establish a unique prefix for packaged components.

To identify the namespace associated with a package.

To support package creation and distribution.

To reduce naming conflicts across Salesforce applications.

General Steps

Sign in to the Salesforce org used for the supported packaging setup.

Open the relevant namespace registration or namespace settings page in Setup.

Review the available namespace configuration options.

Register or associate the appropriate namespace according to the packaging workflow.

Verify that the namespace is connected to the intended packaging setup.

Confirm that the package configuration uses the correct namespace.

Important learning: Namespace registration and package creation are related but separate activities. The exact Setup page and association steps depend on the packaging model and the Salesforce org configuration. For 2GP, the namespace must be registered and linked to the Dev Hub as required by Salesforce.

### 9. Overall Learning Summary

During this learning activity, I explored Salesforce Partner Community access, connections between multiple Salesforce organizations, and the differences between 1GP and 2GP managed packages. I also learned how to install packages, manage package versions, and configure namespaces for managed package development.

This learning helped me understand the end-to-end packaging process, from preparing the development environment and registering the namespace to creating package versions, installing packages in subscriber orgs, and managing application releases.