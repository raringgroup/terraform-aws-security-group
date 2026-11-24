## ----------------------------------------------------------------------------
## Copyright 2021-2022 Cloud Posse, LLC
## Copyright 2026 Raring Group LLC
##
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
##     http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.
##
## Modified from upstream cloudposse/terraform-aws-security-group (2.0.0-rc1) by Raring Group LLC:
## removed the `region` variable, which is now provided by the Raring Group context module.
## ----------------------------------------------------------------------------

variable "rules" {
  type        = any
  description = "List of security group rules to apply to the created security group"
}

variable "rule_matrix_self" {
  type        = bool
  description = "Value to set `self` in `rule_matrix` test rule"
  default     = null
}

variable "inline_rules_enabled" {
  type        = bool
  description = "Flag to enable/disable inline security group rules"
  default     = false
}
