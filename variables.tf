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
    compute_isolation_enabled           = optional(bool)
    dynamic_executor_allocation_enabled = optional(bool)
    max_executors                       = optional(number)
    min_executors                       = optional(number)
    node_count                          = optional(number)
    session_level_packages_enabled      = optional(bool)
    spark_events_folder                 = optional(string)
    spark_log_folder                    = optional(string)
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
  validation {
    condition = alltrue([
      for k, v in var.synapse_spark_pools : (
        v.min_executors == null || (v.min_executors >= 0 && v.min_executors <= 200)
      )
    ])
    error_message = "must be between 0 and 200"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_spark_pools : (
        v.max_executors == null || (v.max_executors >= 0 && v.max_executors <= 200)
      )
    ])
    error_message = "must be between 0 and 200"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_spark_pools : (
        v.node_count == null || (v.node_count >= 3 && v.node_count <= 200)
      )
    ])
    error_message = "must be between 3 and 200"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_spark_pools : (
        v.auto_scale == null || (v.auto_scale.min_node_count >= 3 && v.auto_scale.min_node_count <= 200)
      )
    ])
    error_message = "must be between 3 and 200"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_spark_pools : (
        v.auto_scale == null || (v.auto_scale.max_node_count >= 3 && v.auto_scale.max_node_count <= 200)
      )
    ])
    error_message = "must be between 3 and 200"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_spark_pools : (
        v.auto_pause == null || (v.auto_pause.delay_in_minutes >= 5 && v.auto_pause.delay_in_minutes <= 10080)
      )
    ])
    error_message = "must be between 5 and 10080"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_spark_pools : (
        v.spark_config == null || (length(v.spark_config.content) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_spark_pools : (
        v.spark_config == null || (length(v.spark_config.filename) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_spark_pools : (
        contains(["3.4", "3.5"], v.spark_version)
      )
    ])
    error_message = "must be one of: 3.4, 3.5"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_spark_pools : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

