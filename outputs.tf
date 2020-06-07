output "private_subnet_ids" {
  value = [
    data.aws_subnet.trusted_az_a.id,
    data.aws_subnet.trusted_az_b.id,
    data.aws_subnet.trusted_az_c.id
  ]
}
output "public_subnet_ids" {
  value = [
    data.aws_subnet.public_az_a.id,
    data.aws_subnet.public_az_b.id,
    data.aws_subnet.public_az_c.id
  ]
}
output "mn_vpc_id" {
  value = data.aws_vpc.mn_default_vpc.id
}
output "accounts_pi" {
  value = ["765948204630", "892618726120", "756281343804"]
}
