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
