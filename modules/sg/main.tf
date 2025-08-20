#------------------------------------------------------------
# Security Group Module
#------------------------------------------------------------
resource "aws_security_group" "my_sec_group" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id

  tags = merge(var.tags, {
    Name = var.name
  })
}

resource "aws_security_group_rule" "ingress" {
  count = length(var.ingress_rules)

  security_group_id = aws_security_group.my_sec_group.id
  type              = "ingress"

  description = var.ingress_rules[count.index].description
  from_port   = var.ingress_rules[count.index].from_port
  to_port     = var.ingress_rules[count.index].to_port
  protocol    = var.ingress_rules[count.index].protocol
  cidr_blocks = var.ingress_rules[count.index].cidr_blocks
}

resource "aws_security_group_rule" "egress" {
  count = length(var.egress_rules)

  security_group_id = aws_security_group.my_sec_group.id
  type              = "egress"

  description = var.egress_rules[count.index].description
  from_port   = var.egress_rules[count.index].from_port
  to_port     = var.egress_rules[count.index].to_port
  protocol    = var.egress_rules[count.index].protocol
  cidr_blocks = var.egress_rules[count.index].cidr_blocks
}
