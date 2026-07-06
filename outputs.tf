output "synapse_spark_pools" {
  description = "All synapse_spark_pool resources"
  value       = azurerm_synapse_spark_pool.synapse_spark_pools
}
output "synapse_spark_pools_auto_pause" {
  description = "List of auto_pause values across all synapse_spark_pools"
  value       = [for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : v.auto_pause]
}
output "synapse_spark_pools_auto_scale" {
  description = "List of auto_scale values across all synapse_spark_pools"
  value       = [for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : v.auto_scale]
}
output "synapse_spark_pools_cache_size" {
  description = "List of cache_size values across all synapse_spark_pools"
  value       = [for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : v.cache_size]
}
output "synapse_spark_pools_compute_isolation_enabled" {
  description = "List of compute_isolation_enabled values across all synapse_spark_pools"
  value       = [for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : v.compute_isolation_enabled]
}
output "synapse_spark_pools_dynamic_executor_allocation_enabled" {
  description = "List of dynamic_executor_allocation_enabled values across all synapse_spark_pools"
  value       = [for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : v.dynamic_executor_allocation_enabled]
}
output "synapse_spark_pools_library_requirement" {
  description = "List of library_requirement values across all synapse_spark_pools"
  value       = [for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : v.library_requirement]
}
output "synapse_spark_pools_max_executors" {
  description = "List of max_executors values across all synapse_spark_pools"
  value       = [for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : v.max_executors]
}
output "synapse_spark_pools_min_executors" {
  description = "List of min_executors values across all synapse_spark_pools"
  value       = [for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : v.min_executors]
}
output "synapse_spark_pools_name" {
  description = "List of name values across all synapse_spark_pools"
  value       = [for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : v.name]
}
output "synapse_spark_pools_node_count" {
  description = "List of node_count values across all synapse_spark_pools"
  value       = [for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : v.node_count]
}
output "synapse_spark_pools_node_size" {
  description = "List of node_size values across all synapse_spark_pools"
  value       = [for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : v.node_size]
}
output "synapse_spark_pools_node_size_family" {
  description = "List of node_size_family values across all synapse_spark_pools"
  value       = [for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : v.node_size_family]
}
output "synapse_spark_pools_session_level_packages_enabled" {
  description = "List of session_level_packages_enabled values across all synapse_spark_pools"
  value       = [for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : v.session_level_packages_enabled]
}
output "synapse_spark_pools_spark_config" {
  description = "List of spark_config values across all synapse_spark_pools"
  value       = [for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : v.spark_config]
}
output "synapse_spark_pools_spark_events_folder" {
  description = "List of spark_events_folder values across all synapse_spark_pools"
  value       = [for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : v.spark_events_folder]
}
output "synapse_spark_pools_spark_log_folder" {
  description = "List of spark_log_folder values across all synapse_spark_pools"
  value       = [for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : v.spark_log_folder]
}
output "synapse_spark_pools_spark_version" {
  description = "List of spark_version values across all synapse_spark_pools"
  value       = [for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : v.spark_version]
}
output "synapse_spark_pools_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_spark_pools"
  value       = [for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : v.synapse_workspace_id]
}
output "synapse_spark_pools_tags" {
  description = "List of tags values across all synapse_spark_pools"
  value       = [for k, v in azurerm_synapse_spark_pool.synapse_spark_pools : v.tags]
}

