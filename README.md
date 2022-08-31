# azure-subscription-tags-terraform-az-api

This is a simple terraform module showcasing how Subscription level tags can be updated with terraform. This functionality doesn't really exist in the azurerm terraform provider. While a subscription resource does exist, it would require you to actually create the subscription with terraform or import it into the state.

## FAQ
1. Why have you not used the "azapi_resource" resource?
I opted not to use this resource because it would require terraform importing (tags resources are "created" by default and already exist in your subscription)

## Limitations:
The module will not touch tags that it has not created itself.
The module in fact does not have the capability of deleting tags at all.