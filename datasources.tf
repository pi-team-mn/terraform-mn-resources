data "aws_vpc" "mn_default_vpc" {
  state = "available"
}

data "aws_subnet" "public_az_a" {
  state = "available"

  filter {
    name   = "tag:Name"
    values = ["mn-public-eu-central-1a"]
  }

  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.mn_default_vpc.id]
  }
}

data "aws_subnet" "public_az_b" {
  state = "available"

  filter {
    name   = "tag:Name"
    values = ["mn-public-eu-central-1b"]
  }

  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.mn_default_vpc.id]
  }
}

data "aws_subnet" "public_az_c" {
  state = "available"

  filter {
    name   = "tag:Name"
    values = ["mn-public-eu-central-1c"]
  }

  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.mn_default_vpc.id]
  }
}

data "aws_subnet" "trusted_az_a" {
  state = "available"

  filter {
    name   = "tag:Name"
    values = ["mn-private-eu-central-1a"]
  }

  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.mn_default_vpc.id]
  }
}

data "aws_subnet" "trusted_az_b" {
  state = "available"

  filter {
    name   = "tag:Name"
    values = ["mn-private-eu-central-1b"]
  }

  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.mn_default_vpc.id]
  }
}

data "aws_subnet" "trusted_az_c" {
  state = "available"

  filter {
    name   = "tag:Name"
    values = ["mn-private-eu-central-1c"]
  }

  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.mn_default_vpc.id]
  }
}
