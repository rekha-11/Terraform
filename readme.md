Resources Needed
 - AWS Account

Before Starting
 - Create New IAM role, 
    - Create new user, attach AdminAccess policy, provide console access, create CLI Access key
    - Add Access key and secret key in terraform.tfvars file

Code overview
1. Created new AWS key pair (aws-kp.tf)
2. Created new AWS Security Group(aws-sg.tf)
    - Added some inbound and outbound rules
3. Created new ec2 instance(instance.tf)
4. Assign newly created key pair and SG to newly created ec2 instance
