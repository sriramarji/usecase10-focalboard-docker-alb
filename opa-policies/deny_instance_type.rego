package terraform.deny

deny[msg] {
  some rc
  rc := input.resource_changes[_]
  instance := rc.change.after.instance_type
  msg := sprintf("Instance type used: %v", [instance])
}

deny[msg] {
  some rc
  rc := input.resource_changes[_]
  rc.change.after.instance_type == "t2.micro"
  msg := "t2.micro instances are not allowed"
}