output "athena_prepared_statements_id" {
  description = "Map of id values across all athena_prepared_statements, keyed the same as var.athena_prepared_statements"
  value       = { for k, v in aws_athena_prepared_statement.athena_prepared_statements : k => v.id if v.id != null && length(v.id) > 0 }
}
output "athena_prepared_statements_description" {
  description = "Map of description values across all athena_prepared_statements, keyed the same as var.athena_prepared_statements"
  value       = { for k, v in aws_athena_prepared_statement.athena_prepared_statements : k => v.description if v.description != null && length(v.description) > 0 }
}
output "athena_prepared_statements_name" {
  description = "Map of name values across all athena_prepared_statements, keyed the same as var.athena_prepared_statements"
  value       = { for k, v in aws_athena_prepared_statement.athena_prepared_statements : k => v.name if v.name != null && length(v.name) > 0 }
}
output "athena_prepared_statements_query_statement" {
  description = "Map of query_statement values across all athena_prepared_statements, keyed the same as var.athena_prepared_statements"
  value       = { for k, v in aws_athena_prepared_statement.athena_prepared_statements : k => v.query_statement if v.query_statement != null && length(v.query_statement) > 0 }
}
output "athena_prepared_statements_region" {
  description = "Map of region values across all athena_prepared_statements, keyed the same as var.athena_prepared_statements"
  value       = { for k, v in aws_athena_prepared_statement.athena_prepared_statements : k => v.region if v.region != null && length(v.region) > 0 }
}
output "athena_prepared_statements_workgroup" {
  description = "Map of workgroup values across all athena_prepared_statements, keyed the same as var.athena_prepared_statements"
  value       = { for k, v in aws_athena_prepared_statement.athena_prepared_statements : k => v.workgroup if v.workgroup != null && length(v.workgroup) > 0 }
}

