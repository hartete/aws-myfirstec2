resource "aws_lb" "first nlb" {
  name               = "aws-nlb-tf"
  internal           = false
  load_balancer_type = "network"
  subnets            = ["${aws_subnet.public.*.id}"]

  enable_deletion_protection = true

  tags {
    Environment = "test"
  }
}
