#main.tf

resource "aws_rds_cluster" "example" {
  cluster_identifier = "example"
  master_username    = "example"
  master_password    = "example"
  db_subnet_group_name = aws_db_subnet_group.example.name
}

#The following output variable will print the DNS name of AWS RDS cluster
output "rds_cluster_endpoint" {
  value = aws_rds_cluster.example.endpoint
} 
