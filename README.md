# Code Examples

Working code examples from Blog/Book: Fundamentals of DevOps and Software Delivery by Yevgeniy Brikman.

*The notes below assume you're using a Windows client with the tools running natively on the client machine.* 

*Ansible cannot run natively on Windows so WSL 2 was installed. WSL 2 is also prerequisite for Docker Desktop on Windows.*

https://www.gruntwork.io/fundamentals-of-devops

## Notes and Required Tools by Chapter.

### Part 1. An Introduction to DevOps and Software Delivery

**GIT for Windows/Linux**

https://git-scm.com/downloads

**Node.js**

https://nodejs.org/en/download/package-manager

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

*Had to run docker commands from Administrator Powershell as I could not add my userid to docker-users Group.*

*Due to a Bug in Docker Desktop I had to issue "wsl --unregister docker-desktop" command before starting  it after the initial Docker Desktop launch!*

**Kubernetes**

https://kubernetes.io/docs/tasks/tools/

*Enable Kubernetes in Docker Desktop and download "kubectl" Command Line Tool using above link.*