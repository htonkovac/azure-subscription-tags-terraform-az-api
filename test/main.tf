module "subscription_tags" {
  source = "../"
  tags = {
    "hello": "world"
  }
  subscription_guid = "8c581abc-4029-48af-ad32-5eabd64a4fe9"
}
