
Project 1 : Azure Key Vault for Secrets Management
Objective: To securely store, access, and manage sensitive information like connection strings, API keys, and certificates using Azure Key Vault.

Steps:

Setup and Configuration:
Create an Azure Key Vault instance using the Azure portal, Azure CLI, or ARM templates.
Configure access policies: Determine which users or applications have permissions to access or manage secrets.

Secrets Management:
Store a sample secret in the Key Vault (e.g., a database connection string or an API key).
Version secrets: Add a new version of a secret to showcase the versioning capabilities.

Integrate with a Web Application:
Create a simple web application. If one exists from a previous project, you can reuse it.
Modify the application to retrieve the secret from Azure Key Vault. This can be done using the Azure SDK for the specific programming language you are using.
Ensure that the application no longer contains hard-coded sensitive information.

Integrate with Azure DevOps:
Set up a CI/CD pipeline for the application.
Use Azure DevOps's built-in integration to access secrets from Azure Key Vault during the deployment process. This ensures that secrets are not exposed in the deployment pipeline.

Logging and Monitoring:
Enable logging for the Key Vault to monitor access and other activities.
Integrate with Azure Monitor and set up alerts for specific events like unauthorized access attempts.

Backup and Restore:
Manually backup your Key Vault.
Restore the Key Vault from the backup, simulating a recovery scenario.

Deliverables:
Documentation:

A detailed setup guide, including screenshots and code snippets, that outlines each step you took.
Best practices guide on using Azure Key Vault (e.g., not storing extremely sensitive data even in the vault, periodically rotating secrets, etc.).

Code:

The modified web application code with the integration of Azure Key Vault.
Any scripts (e.g., Azure CLI scripts or ARM templates) used for the setup and configuration of Azure Key Vault.

Monitoring Dashboard:

A customized Azure Monitor dashboard that provides insights into the access patterns and health of the Azure Key Vault.

Data Lake and Data Factory







