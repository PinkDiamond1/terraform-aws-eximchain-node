resource "aws_security_group_rule" "rpc_external_node" {
  security_group_id = "${var.node_security_group}"
  type              = "ingress"

  from_port = "${var.rpc_port}"
  to_port   = "${var.rpc_port}"
  protocol  = "tcp"

  source_security_group_id = "${var.rpc_security_group}"
}

resource "aws_security_group_rule" "rpc_external_lb" {
  count = "${var.using_lb ? 1 : 0}"
  
  security_group_id = "${var.lb_security_group}"
  type              = "ingress"

  from_port = "${var.rpc_port}"
  to_port   = "${var.rpc_port}"
  protocol  = "tcp"

  source_security_group_id = "${var.rpc_security_group}"
}
