/**
 * Copyright 2019 Taito United
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

# Google provider

variable "project_id" {
  type        = string
  description = "Google Cloud project id. The project should already exist."
}

variable "region" {
  type        = string
  description = "Google Cloud region."
}

variable "zone" {
  type        = string
  description = "Google Cloud zone."
}

# Project

variable "project" {
  type        = string
  description = "Project name: e.g. \"my-project\""
}

variable "env" {
  type        = string
  description = "Environment: e.g. \"dev\""
}

variable "domain" {
  type        = string
  description = "Domain name: e.g. \"my-project-dev.mydomain.com\""
}

# Monitoring

variable "uptime_targets" {
  type        = list(string)
  description = "Name of each monitoring target: e.g. [ \"client\", \"server\" ]"
}

variable "uptime_paths" {
  type        = list(string)
  description = "Path of each monitoring target: e.g. [ \"/\", \"/api\" ]"
}

variable "uptime_timeouts" {
  type        = list(number)
  description = "Request timeout for each monitoring target: e.g. [ 10, 10 ]"
}

variable "uptime_channels" {
  type        = list(string)
  description = "Stackdriver channels for sending the alerts."
}
