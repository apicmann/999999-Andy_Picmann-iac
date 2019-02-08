
Follow the below instructions for setting up a HAL application to deploy your infrastructure with Terraform.

## Setting up HAL

1. Add your application to HAL
    - Fill out the dialog boxes with the relevant information:
        * Name: Name of your application
        * Organization: Organization (AWS Account) that you will be deploying to ( IAC Training for this class)
        * GitHub Repository: Link to the Git repo you created prior to the workshop
        * Provider: AWS
        * Platform: Infrastructure as Code
        * Language: Terraform

2. Add deployment configuration
    - Select **Manually Add Deployment Target** to add configuration. Deployment config is required for each environment.
      It is required to **Deploy** and **apply terraform changes**.
    - Select your environment (`test-aws`)
    - Select `script` for **Server**.
    - Enter your module name for the **Name** (Or whatever you like, its up to you).
    - Enter the *exact name of your module* for **Script Context**. (should match folder name.  ecs-website in our example)
    - Select your AWS credentials for **Credentials**. ( Choose "IAC Training - NonProd - IAC" in our example) 

3. Edit your application
    - Go to App > Manage Application > Edit Application
        - Under **AWS Settings**
            - Enable "Inject read-only AWS credentials into non-prod builds" if using a non-prod account.
            - Enable "Inject read-only Sandbox AWS credentials into dev builds" if using the sandbox.
        - Under **Parameterized Builds**
            - Enter `module` as a required build parameter.
            - Enter `region` as a required build parameter.


To build, go to Application Dashboard > Start New Build. Select your branch (typically master), **fill out the module and region parameters** (ecs-website and us-east-2, for our example), then Start Build!

This will do a "terraform" plan command, which will basically tell you what terraform is GOING to do, but not actually do just yet. 

Once you review the output and verify that the plan is what you want and all the variables look correct, click "Push Build" then "Push Infrastructure" to run a "terraform apply" and deploy the infrastructure!