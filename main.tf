
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

variable "subscription_guid" {
  type = string
  description = "Subscription GUID."
  validation {
    condition = can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$",var.subscription_guid))
    error_message = "Subscription GUID must be valid. Example value: '00000000-0000-0000-0000-000000000000'."
  }
}

variable "tags" {
    type = map(string)
    description = "Tags to apply to the subscription."
}
