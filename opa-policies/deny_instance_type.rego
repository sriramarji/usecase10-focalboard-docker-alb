package terraform.deny

deny[msg] {
  some rc
  rc := input.resource_changes[_]
  rc.change.after.instance_type == "t2.micro"
  msg := "t2.micro instances are not allowed"
}