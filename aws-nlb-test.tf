resource "aws_lb" "mft-nlb" {
  name               = "mft-aws-nlb-tf"
  internal           = false
  load_balancer_type = "network"
  subnets            = ["${aws_subnet.public.*.id}"]

  enable_deletion_protection = true

  tags {
    Environment = "test"
  }
}
