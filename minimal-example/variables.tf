variable "region" {
  description = "OCI region"
  type        = string
  default     = "eu-frankfurt-1"
}

variable "compartment_ocid" {
  description = "Compartment OCID"
  type        = string
}

variable "subnet_ocid" {
  description = "Subnet OCID for the Autonomous Database"
  type        = string
}

variable "nsg_ocids" {
  description = "Network Security Group OCIDs"
  type        = list(string)
  default     = []
}

variable "db_workload" {
  description = "Database workload type"
  type        = string
  default     = "OLTP"
}

variable "adb_display_name" {
  description = "Display name for the Autonomous Database"
  type        = string
  default     = "exampleADB"
}

variable "admin_password" {
  description = "Admin password for the Autonomous Database"
  type        = string
}

variable "license_model" {
  description = "The license model for the ADW database ('LICENSE_INCLUDED' or 'BRING_YOUR_OWN_LICENSE' allowed)"
  type        = string
  default     = "LICENSE_INCLUDED"
  validation {
    condition     = contains(["LICENSE_INCLUDED", "BRING_YOUR_OWN_LICENSE"], var.license_model)
    error_message = "The license model must be either 'LICENSE_INCLUDED' or 'BRING_YOUR_OWN_LICENSE'."
  }
}

variable "cpu_core_count" {
  description = "Number of CPU cores for the Autonomous Database"
  type        = number
  default     = 1
}

variable "data_storage_size_in_tbs" {
  description = "Data storage size in TBs for the Autonomous Database"
  type        = number
  default     = 1
}