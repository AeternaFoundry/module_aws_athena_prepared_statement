variable "athena_prepared_statements" {
  description = <<EOT
Map of athena_prepared_statements, attributes below
Required:
    - name
    - query_statement
    - workgroup
Optional:
    - description
    - region
EOT

  type = map(object({
    name            = string
    query_statement = string
    workgroup       = string
    description     = optional(string)
    region          = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.athena_prepared_statements : (
        length(v.query_statement) >= 1 && length(v.query_statement) <= 262144
      )
    ])
    error_message = "must be between 1 and 262144 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.athena_prepared_statements : (
        can(regex("^[a-zA-Z0-9._-]{1,128}$", v.workgroup))
      )
    ])
    error_message = ""
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

