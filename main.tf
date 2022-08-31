
resource "azapi_update_resource" "tags" {
# https://docs.microsoft.com/en-us/rest/api/resources/tags/create-or-update-at-scope?tabs=HTTP

  type = "Microsoft.Resources/tags@2021-04-01"
  resource_id = "/subscriptions/${var.subscription_guid}/providers/Microsoft.Resources/tags/default"

  body = jsonencode({
    properties = {
      tags = var.tags
    }
  })
}
