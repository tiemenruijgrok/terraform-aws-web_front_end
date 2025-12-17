# Type and description
# Alphabetical order
# Validation blocks

variable "app_port" {
  description = "The port on which the application will run"
  type        = number
  default     = 80

  validation {
    condition     = var.app_port > 0 && var.app_port < 65536
    error_message = "The app_port must be between 1 and 65535."
  }
}

variable "autoscale_group_size" {
  description = "The desired size of the autoscaling group"
  type        = number
}

variable "autoscale_group_min_max" {
  description = "The minimum and maximum size of the autoscaling group"
  type = object({
    min = number
    max = number
  })
}

variable "environment" {
  description = "The deployment environment (e.g., dev, staging, prod)"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type for the web front-end"
  type        = string
  default     = "t3.micro"
}


variable "launch_template_ami" {
  description = "The AMI ID for the launch template"
  type        = string
}

variable "prefix" {
  description = "Prefix for resource names"
  type        = string
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs for the web front-end"
  type        = list(string)
}

variable "user_data_contents" {
  description = "User data script contents for the launch template"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC where resources will be deployed"
  type        = string
}