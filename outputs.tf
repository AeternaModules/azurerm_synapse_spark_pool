output "synapse_spark_pools_auto_pause" {
  description = "Map of auto_pause values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.auto_pause }
}
output "synapse_spark_pools_auto_scale" {
  description = "Map of auto_scale values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.auto_scale }
}
output "synapse_spark_pools_cache_size" {
  description = "Map of cache_size values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.cache_size }
}
output "synapse_spark_pools_compute_isolation_enabled" {
  description = "Map of compute_isolation_enabled values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.compute_isolation_enabled }
}
output "synapse_spark_pools_dynamic_executor_allocation_enabled" {
  description = "Map of dynamic_executor_allocation_enabled values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.dynamic_executor_allocation_enabled }
}
output "synapse_spark_pools_library_requirement" {
  description = "Map of library_requirement values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.library_requirement }
}
output "synapse_spark_pools_max_executors" {
  description = "Map of max_executors values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.max_executors }
}
output "synapse_spark_pools_min_executors" {
  description = "Map of min_executors values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.min_executors }
}
output "synapse_spark_pools_name" {
  description = "Map of name values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.name }
}
output "synapse_spark_pools_node_count" {
  description = "Map of node_count values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.node_count }
}
output "synapse_spark_pools_node_size" {
  description = "Map of node_size values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.node_size }
}
output "synapse_spark_pools_node_size_family" {
  description = "Map of node_size_family values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.node_size_family }
}
output "synapse_spark_pools_session_level_packages_enabled" {
  description = "Map of session_level_packages_enabled values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.session_level_packages_enabled }
}
output "synapse_spark_pools_spark_config" {
  description = "Map of spark_config values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.spark_config }
}
output "synapse_spark_pools_spark_events_folder" {
  description = "Map of spark_events_folder values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.spark_events_folder }
}
output "synapse_spark_pools_spark_log_folder" {
  description = "Map of spark_log_folder values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.spark_log_folder }
}
output "synapse_spark_pools_spark_version" {
  description = "Map of spark_version values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.spark_version }
}
output "synapse_spark_pools_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.synapse_workspace_id }
}
output "synapse_spark_pools_tags" {
  description = "Map of tags values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = { for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : k => v.tags }
}

