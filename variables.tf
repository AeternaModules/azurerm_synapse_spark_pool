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
  # --- Unconfirmed validation candidates, derived from azurerm_synapse_spark_pool's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.SparkPoolName] !ok
  # path: name
  #   source:    [from validate.SparkPoolName] !regexp.MustCompile(`^[a-zA-Z][a-zA-Z\d]{0,14}$`).MatchString(v)
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] !ok
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] err != nil
  # path: node_size_family
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: node_size
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: min_executors
  #   condition: value >= 0 && value <= 200
  #   message:   must be between 0 and 200
  # path: max_executors
  #   condition: value >= 0 && value <= 200
  #   message:   must be between 0 and 200
  # path: node_count
  #   condition: value >= 3 && value <= 200
  #   message:   must be between 3 and 200
  # path: auto_scale.min_node_count
  #   condition: value >= 3 && value <= 200
  #   message:   must be between 3 and 200
  # path: auto_scale.max_node_count
  #   condition: value >= 3 && value <= 200
  #   message:   must be between 3 and 200
  # path: auto_pause.delay_in_minutes
  #   condition: value >= 5 && value <= 10080
  #   message:   must be between 5 and 10080
  # path: spark_config.content
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: spark_config.filename
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: spark_version
  #   condition: contains(["3.4", "3.5"], value)
  #   message:   must be one of: 3.4, 3.5
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

