resource "aws_security_group" "danit-cluster" {
  name        = "${var.name}-eks-sg"
  description = "Cluster communication with worker nodes"
  #vpc_id      = module.vpc.vpc_id
  vpc_id = var.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    var.tags,
    { Name = "${var.name}-eks-sg" }
  )
}

data "http" "workstation-external-ip" {
  url = "http://ipv4.icanhazip.com"
}

# Override with variable or hardcoded value if necessary
locals {
  workstation-external-cidr = "${chomp(data.http.workstation-external-ip.response_body)}/32"
}

resource "aws_security_group_rule" "kubeedge-cluster-ingress-workstation-https" {
  cidr_blocks       = ["0.0.0.0/0"]
  description       = "Allow workstation to communicate with the cluster API Server"
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.danit-cluster.id
  to_port           = 443
  type              = "ingress"
}

#resource "aws_security_group" "kubeedge-nodes" {
#  name        = "${var.name}-eks-sg-nodes"
#  description = "Cluster nodes communication"
#  vpc_id      = module.vpc.vpc_id
#
#  egress {
#    from_port   = 0
#    to_port     = 0
#    protocol    = "-1"
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#
#  ingress {
#    from_port   = 10000
#    to_port     = 10004
#    protocol    = "tcp"
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#
#  tags = merge(
#    var.tags,
#    { Name = "${var.name}-eks-nodes-sg" }
#  )
#}
