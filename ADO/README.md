Terraform Cloud Variables
Here is a list of variables and values you'll need to specify for the config to work:

Terraform Variables

ado_org_service_url - Org service url for Azure DevOps
ado_github_repo - Name of the repository in the format <GitHub Org>/<RepoName>.
ado_github_pat (sensitive) - Personal authentication token for GitHub repo.
Environment Variables

AZDO_PERSONAL_ACCESS_TOKEN (sensitive) - Personal authentication token for Azure DevOps.
ARM_SUBSCRIPTION_ID - Subscription ID where you will create the Azure Storage Account.
ARM_CLIENT_ID (sensitive) - Client ID of service principal with the necessary rights in the referenced subscription.
ARM_CLIENT_SECRET (sensitive) - Secret associated with the Client ID.
ARM_TENANT_ID - Azure AD tenant where the Client ID is located.
Basically there are a lot less variables to configure.

Phase Two
The updated config makes two big changes. First, we are creating and Azure Key Vault to store variables that will be used by the pipeline. Second, we are creating two service principals to access the Key Vault and to create resources in the target subscription. To take advantage of Key Vault, we are adding a service endpoint in our ADO config and changing the pipeline itself to use variables loaded by Azure Key Vault.

Why use Key Vault instead of variable groups in ADO? In a real-world scenario you might have three different environment: Dev, QA, and Prod. You could create an Azure Key Vault for each with the same secret names stored in each Key Vault, but different values. The access policy on each would be scoped to an SP used by each environment's pipeline, so Dev cannot see Prod values, but both pipelines can use the same variable names.

Also it's neat. I like things that are neat.
https://www.youtube.com/watch?v=7wbhs7PFdoA explains everything about pipeline by Ned in The CLoud.