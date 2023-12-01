Terraform is a powerful Infrastructure as Code (IaC) tool that allows you to define and provision infrastructure in a declarative manner. Here are some commonly used Terraform commands:

1. **terraform init:**
    - Initializes a new or existing Terraform working directory by downloading and installing the required providers and modules.

   ```bash
   terraform init
   ```

2. **terraform validate:**
    - Checks and validates the syntax and configuration of your Terraform files without actually applying changes.

   ```bash
   terraform validate
   ```

3. **terraform plan:**
    - Generates an execution plan that describes the changes Terraform will make to achieve the desired state.

   ```bash
   terraform plan
   ```

4. **terraform apply:**
    - Applies the changes described in the Terraform execution plan.

   ```bash
   terraform apply
   ```

5. **terraform destroy:**
    - Destroys all resources created by Terraform, effectively tearing down the infrastructure.

   ```bash
   terraform destroy
   ```

6. **terraform fmt:**
    - Rewrites Terraform configuration files to a canonical format with consistent styling.

   ```bash
   terraform fmt
   ```

7. **terraform get:**
    - Downloads and installs modules defined in the root module.

   ```bash
   terraform get
   ```

8. **terraform show:**
    - Outputs the current state or a saved plan file in a human-readable format.

   ```bash
   terraform show
   ```

9. **terraform state:**
    - Performs operations on Terraform state files, such as listing resources or moving resources to a different state.

   ```bash
   terraform state [subcommand]
   ```

10. **terraform import:**
- Associates an existing resource with a Terraform resource configuration.

```bash
terraform import [options] TYPE.NAME ID
```

These are just a few commonly used Terraform commands. You can get a comprehensive list of Terraform commands by running:

```bash
terraform --help
```

This will display a list of available commands and their descriptions. Additionally, each command has its own help, accessible by appending `--help` to the specific command. For example:

```bash
terraform plan --help
```

This will provide details on how to use the `terraform plan` command.