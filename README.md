# Terraform Sentry Setup

It will fulfill the requirements of the sentry self-hosted setup on AWS.

### Resources Supported

 - AWS EC2 Instance
 - AWS Key Pair

### AMI ID

- Using the latest stable CoreOs Container Linux AMI ID.

### Requirements

- Terraform version >= v0.12.23
- AWS Provider >= v2.43.0
- Default VPC 
- Default Public Subnet
- A Security group allowing connections on 80/443/22 attached to the instance.

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| instance_type | EC2 Instance Type | string | `t2.large` | yes |
| public_key_material | A public key data. | string | `null` | yes |
| tags | Region name | map | `null` | yes |

### Outputs

| Name | Description | 
|------|-------------|
| sentry_instance_dns | Public DNS of the instance. | 
| sentry_instance_ip | Public IP of the instance. | 
| sentry_instance_id | Instance ID. |

### Future Scope

- Automatic tls private key creation to use with key_pair argument of the resource or to pass on the key pair resource name which should exist before running terraform apply.
- Spawn instance in an autoscaling group using launch template and launch config.
- Generating sentry key from the bootstrap script. Right now, It is hardcoded.
- Adding the capability to pass subnet groups, It will give modularity to use custom VPC.
- Creation of security group and attaching it with the instance.
- Storing Terraform state backend in s3 with DynamoDB locking.
- Getting the value of sentry initial username and password from the root module.
- Static test analysis of the code through terratest or tftest.

#### License

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.