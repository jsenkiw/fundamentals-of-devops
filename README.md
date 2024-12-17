# Code Examples

Working code examples from Blog/Book: Fundamentals of DevOps and Software Delivery by Yevgeniy Brikman.

*The notes below assume you're using a Windows client with the tools running natively on the client machine where possible.* 

*Ansible cannot run natively on Windows so WSL 2 was installed. WSL 2 is also prerequisite for Docker Desktop on Windows.*

https://www.gruntwork.io/fundamentals-of-devops

## Notes and Required Tools by Chapter.

### Part 1. An Introduction to DevOps and Software Delivery

**GIT for Windows/Linux**

https://git-scm.com/downloads

*Technically GIT is not required until Part 4 but I found it useful from the start.*

*GitHub Account is also required in Part 4 so create one at this point.*

**Node.js**

https://nodejs.org/en/download/prebuilt-binaries

**Fly.io**

https://fly.io/docs/flyctl/install/

*Additionally Fly.io and AWS Accounts are necessary to run the code examples.*

### Part 2. How to Manage Your Infrastructure as Code

**AWS CLI**

https://aws.amazon.com/cli/

**Ansible**

https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html

*Ansible cannot run natively on Windows. WSL 2 was used.*

**WSL: Windows Subsystem for Linux**

https://learn.microsoft.com/en-us/windows/wsl/install

**Packer**

https://developer.hashicorp.com/packer/install

**OpenTofu**

https://opentofu.org/docs/intro/install/

*OpenTofu is an open source MPL 2.0 licensed fork of HashiCorp Terraform Provisioning Tool. Terraform is now licensed under BSL.* 

### Part 3. How to Deploy Many Apps: Orchestration, VMs, Containers, and Serverless

**Docker Desktop**

https://docs.docker.com/desktop/

*Install Docker Desktop to run Containers. Select WSL 2 at the Installation option instead of Hyper-V.*

*Had to run docker commands from Administrator Powershell account as I could not add my userid to docker-users Group.*

*Due to a Bug in Docker Desktop had to issue "wsl --unregister docker-desktop" command before starting it after the initial Docker Desktop launch!*

**Kubernetes**

https://kubernetes.io/docs/tasks/tools/

*Enable Kubernetes in Docker Desktop and download "kubectl" Command Line Tool using above link.*

### Part 4. How to Version, Build, and Test Your Code

*Git and GitHub Account are required; see notes under Part 1*

**Terrascan** 

https://runterrascan.io/docs/getting-started/#installing-terrascan

### Part 5. How to Set Up Continuous Integration (CI) and Continuous Delivery (CD)

*GitHub Actions used for CI Server Testing*

*Updated supplied module **gh-actions-iam-roles** to correct IAM authorization error when running Pipeline in Github. Required Role-Policy **iam:*RolePolicy** *   