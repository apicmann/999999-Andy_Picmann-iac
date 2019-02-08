# Training Workshop Kit

> [Docker ](Dockerfile) : Open platform for developers and sysadmins to build, ship, and run distributed applications as containers, whether on laptops, data center VMs, or the cloud.

> [CircleCI ](https://circleci.foc.zone/gh/Servicing/dolphin-api) : Continuous Integration (CI) and Continuous Deployments (CD) tool  

> [AWS Elastic Container Service (ECS) ](https://aws.amazon.com/ecs/) : Orchestration of Docker containers on EC2 instances. This runs the code, auto-scales containers and the EC2's they run on up and down, as well as handling the infrastructure side of deploying new code.

> [HAL9000 ](https://hal9000/applications/933/status) : QL in-house application that handles deployments and releases to various environments (including AWS). It also handles a lot of the encrypted configuration values which are passed to the code as Environment Variables.

> [Terraform ](https://www.terraform.io/) : Terraform is Infrastructure-As-Code (IAC) that can build out highly QL-specific infrastructure components in a repeatable way. Instead of a lot of click-and-configure, we can run terraform scripts to create approved infrastructure stacks on-demand in minutes.

# Prerequisites
These are the prereqs which are needed prior to coming to a workshop. The following should be completed and ready to go:

- Docker installed locally ( Install through Software Center (PC) or Self Service (Mac) )
- VSCode or similar file editor ( https://code.visualstudio.com/download )
- AWSCLI installed ( https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html )
- Request AWS account access to Training Lab Account (418023852230) as the "AWS-SSO-Developer role" ( myaccess/ )
- Terraform ( https://www.terraform.io/ )
- Create demo repository under your personal GIT account ( 999999-YOUR_NAME-iac )
- Clone example GIT project locally ( see below )

## Setting up GIT

1. Clone this repo locally to your laptop ( https://git.rockfin.com/training-iac/training-starter-kit.git )

2. Rename the folder, then delete the **.git** folder. This will become the base for the Git repo for your application's infrastructure. A good naming standard to use is "999999-YOURNAME-iac", where 999999 would normally be your application's core ID.

4. In the folder is a sample module, "ecs-website", which deploys an internally accessible public website on an ECS container. In that folder, you will find a terraform.tfvars file. This is how modules are deployed through HAL+Terraform, which will be discussed during that workshop.

5. Make a repo with the same name as what you called the folder in step 2 under your personal Git organization. https://git.rockfin.com/YOUR-NAME/999999-YOURNAME-iac

6. Follow the instructions given to you post-creation in your browser to upload your modified clone of the starter-kit to your applications new IAC repo. The one difference is instead of "git add README.md", type "git add -A" instead to add everything.

You are all set if you have a custom-named version of the starter kit uploaded and ready to go in your personal GIT org.