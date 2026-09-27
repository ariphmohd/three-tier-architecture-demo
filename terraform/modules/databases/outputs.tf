output "mysql_endpoint" {
  description = "Connection hostname for Amazon RDS MySQL"
  value       = aws_db_instance.mysql.address
}

output "mysql_port" {
  description = "Connection port for Amazon RDS MySQL"
  value       = aws_db_instance.mysql.port
}

output "docdb_endpoint" {
  description = "Connection hostname for Amazon DocumentDB cluster"
  value       = aws_docdb_cluster.docdb.endpoint
}

output "docdb_port" {
  description = "Connection port for Amazon DocumentDB"
  value       = aws_docdb_cluster.docdb.port
}

output "redis_endpoint" {
  description = "Primary endpoint address for Amazon ElastiCache Redis"
  value       = aws_elasticache_replication_group.redis.primary_endpoint_address
}

output "redis_port" {
  description = "Port for Amazon ElastiCache Redis"
  value       = 6379
}

output "mq_broker_id" {
  description = "Broker ID for Amazon MQ RabbitMQ"
  value       = aws_mq_broker.rabbitmq.id
}

output "mq_endpoint" {
  description = "AMQP endpoint for Amazon MQ RabbitMQ"
  value       = length(aws_mq_broker.rabbitmq.instances) > 0 ? aws_mq_broker.rabbitmq.instances[0].endpoints[0] : ""
}
