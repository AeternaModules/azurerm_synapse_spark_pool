output "synapse_spark_pools_id" {
  description = "Map of id values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "synapse_spark_pools_auto_pause" {
  description = "Map of auto_pause values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => one(v.auto_pause) if v.auto_pause != null && length(v.auto_pause) > 0 }
}
output "synapse_spark_pools_auto_scale" {
  description = "Map of auto_scale values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => one(v.auto_scale) if v.auto_scale != null && length(v.auto_scale) > 0 }
}
output "synapse_spark_pools_cache_size" {
  description = "Map of cache_size values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.cache_size if v.cache_size != null }
}
output "synapse_spark_pools_compute_isolation_enabled" {
  description = "Map of compute_isolation_enabled values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.compute_isolation_enabled if v.compute_isolation_enabled != null }
}
output "synapse_spark_pools_dynamic_executor_allocation_enabled" {
  description = "Map of dynamic_executor_allocation_enabled values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.dynamic_executor_allocation_enabled if v.dynamic_executor_allocation_enabled != null }
}
output "synapse_spark_pools_library_requirement" {
  description = "Map of library_requirement values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => one(v.library_requirement) if v.library_requirement != null && length(v.library_requirement) > 0 }
}
output "synapse_spark_pools_max_executors" {
  description = "Map of max_executors values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.max_executors if v.max_executors != null }
}
output "synapse_spark_pools_min_executors" {
  description = "Map of min_executors values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.min_executors if v.min_executors != null }
}
output "synapse_spark_pools_name" {
  description = "Map of name values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.name if v.name != null && length(v.name) > 0 }
}
output "synapse_spark_pools_node_count" {
  description = "Map of node_count values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.node_count if v.node_count != null }
}
output "synapse_spark_pools_node_size" {
  description = "Map of node_size values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.node_size if v.node_size != null && length(v.node_size) > 0 }
}
output "synapse_spark_pools_node_size_family" {
  description = "Map of node_size_family values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.node_size_family if v.node_size_family != null && length(v.node_size_family) > 0 }
}
output "synapse_spark_pools_session_level_packages_enabled" {
  description = "Map of session_level_packages_enabled values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.session_level_packages_enabled if v.session_level_packages_enabled != null }
}
output "synapse_spark_pools_spark_config" {
  description = "Map of spark_config values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => one(v.spark_config) if v.spark_config != null && length(v.spark_config) > 0 }
}
output "synapse_spark_pools_spark_events_folder" {
  description = "Map of spark_events_folder values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.spark_events_folder if v.spark_events_folder != null && length(v.spark_events_folder) > 0 }
}
output "synapse_spark_pools_spark_log_folder" {
  description = "Map of spark_log_folder values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.spark_log_folder if v.spark_log_folder != null && length(v.spark_log_folder) > 0 }
}
output "synapse_spark_pools_spark_version" {
  description = "Map of spark_version values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.spark_version if v.spark_version != null && length(v.spark_version) > 0 }
}
output "synapse_spark_pools_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.synapse_workspace_id if v.synapse_workspace_id != null && length(v.synapse_workspace_id) > 0 }
}
output "synapse_spark_pools_tags" {
  description = "Map of tags values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

