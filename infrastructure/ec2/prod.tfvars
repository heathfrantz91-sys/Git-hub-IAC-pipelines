name = "heathprodec2"
ami  = "ami-0360c520857e3138f"
create   = true
key_name = "prod-keypair"

instance_tags = {
  Environment = "prod"
  Owner       = "YourName"
}
