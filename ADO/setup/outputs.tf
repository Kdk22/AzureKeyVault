output "Project_ID" {
  value = azuredevops_project.terraform_ado_project.id
}

output "Project_URL" {
  value = azuredevops_project.terraform_ado_project.id
}

output "debug_vars" {
  value = {
    var1 = var.ado_org_service_url
  }
}