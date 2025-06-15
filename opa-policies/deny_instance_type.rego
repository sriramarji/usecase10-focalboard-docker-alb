package terraform.deny

deny[msg] {
  some i
  input.resource_changes[i].change.after.instance_type == "t2.micro"
  msg = "t2.micro instances are not allowed"
}
