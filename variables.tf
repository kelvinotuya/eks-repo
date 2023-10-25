variable "project_name" {
  type        = string
  description = "Globally used project name"
  default     = "terraform-registry"
}

variable "region" {
  type        = string
  description = "AWS US-based Region that will be used."
  default     = "us-east-2"
}

variable "cidr" {
  type        = string
  description = "The CIDR block to use"
  default     = "10.0.0.0/16"
}


variable "cluster_version" {
  type        = string
  description = "The Kubernetes version for our clusters"
  default     = "1.24"
}

variable "cluster_instance_type" {
  type        = string
  description = "EC2 instance type for the EKS autoscaling group."
  default     = "m5.large"
}

variable "cluster_asg_desired_capacity" {
  type        = number
  description = "The default number of EC2 instances our EKS cluster runs."
  default     = 3
}

variable "cluster_asg_max_size" {
type = number
description = "The maximum number of EC2 instances our EKS cluster will have."
default = 5
}

variable "cluster_enabled_log_types" {
type = list(string)
description = "The Kubernetes log types that will be enabled for the EKS cluster."
default = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
}

variable "cluster_write_kubeconfig" {
type = bool
description = "Specify if Terraform should output the Kubernetes configuration file. "
default = false
}
