## ----------------------------------------------------------------------------
## Copyright 2021-2022 Cloud Posse, LLC
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
## ----------------------------------------------------------------------------

output "id" {
  description = "The created or target Security Group ID"
  value       = local.security_group_id
}

output "arn" {
  description = "The created Security Group ARN (null if using existing security group)"
  value       = try(local.created_security_group.arn, null)
}

output "name" {
  description = "The created Security Group Name (null if using existing security group)"
  value       = try(local.created_security_group.name, null)
}

output "rules_terraform_ids" {
  description = "List of Terraform IDs of created `security_group_rule` resources, primarily provided to enable `depends_on`"
  value       = values(aws_security_group_rule.keyed).*.id
}
