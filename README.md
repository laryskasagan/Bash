# Bash Scripts 🖥️   

A collection of simple and efficient Bash scripts for automating tasks, managing systems, and streamlining workflows.

-------------------

## **1. Connect to Git Repository through SSH** 📂

This instruction will guide you through the process of setting up and connecting a local project to a Git repository step by step.
1. **Ensure that Git is installed on your computer**

You can check this by running `git --version` in your terminal. If Git is not installed, you can follow the [official Git installation guide](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).

2. **Set Up Your GitHub SSH Keys**

SSH keys are a more secure way to authenticate with GitHub than using a username and password.
#### Check if you already have SSH keys:
```bash
ls -al ~/.ssh
```
#### Generate a new SSH key (if you don't have one):
```bash
ssh-keygen -t rsa -b 4096 -C "yourEmail@xyz.com"
```
Click **Enter** to accept the default file location, then set a passphrase if desired.

#### Add the SSH key to your SSH agent:
```bash
eval "$(ssh-agent -s)"
```
When you add your SSH key to the SSH agent, you don’t have to enter your passphrase every time you perform a Git operation that requires authentication (like *git push* or *git pull*). The SSH agent keeps your private key in memory, allowing you to authenticate seamlessly.
#### Then add your private key:
```bash
ssh-add -K ~/.ssh/id_rsa
```
#### Add your SSH key to GitHub:
```bash
pbcopy < ~/.ssh/id_rsa.pub
```
Now go to your [GitHub SSH settings](https://github.com/settings/keys) and add a new SSH key, pasting the key you just copied.

#### Test your SSH connection:
```bash
ssh -T git@github.com
```
3. **Cloning a Repository**

Once you've set up SSH you can clone a GitHub repository. 
#### Go to the folder where you want to clone the repository:
```bash
cd path/to/folder
```
#### Clone the repository
```bash
git clone git@github.com:username/repository.git
```
Once you have cloned the repository, you can use Git commands to manage it.