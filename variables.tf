variable "synapse_spark_pools" {
  description = <<EOT
Map of synapse_spark_pools, attributes below
Required:
    - name
    - node_size
    - node_size_family
    - spark_version
    - synapse_workspace_id
Optional:
    - cache_size
    - compute_isolation_enabled
    - dynamic_executor_allocation_enabled
    - max_executors
    - min_executors
    - node_count
    - session_level_packages_enabled
    - spark_events_folder
    - spark_log_folder
    - tags
    - auto_pause (block):
        - delay_in_minutes (required)
    - auto_scale (block):
        - max_node_count (required)
        - min_node_count (required)
    - library_requirement (block):
        - content (required)
        - filename (required)
    - spark_config (block):
        - content (required)
        - filename (required)
EOT

  type = map(object({
    name                                = string
    node_size                           = string
    node_size_family                    = string
    spark_version                       = string
    synapse_workspace_id                = string
    cache_size                          = optional(number)
    compute_isolation_enabled           = optional(bool) # Default: false
    dynamic_executor_allocation_enabled = optional(bool) # Default: false
    max_executors                       = optional(number)
    min_executors                       = optional(number)
    node_count                          = optional(number)
    session_level_packages_enabled      = optional(bool)   # Default: false
    spark_events_folder                 = optional(string) # Default: "/events"
    spark_log_folder                    = optional(string) # Default: "/logs"
    tags                                = optional(map(string))
    auto_pause = optional(object({
      delay_in_minutes = number
    }))
    auto_scale = optional(object({
      max_node_count = number
      min_node_count = number
    }))
    library_requirement = optional(object({
      content  = string
      filename = string
    }))
    spark_config = optional(object({
      content  = string
      filename = string
    }))
  }))
}

