# Devops Take Home Exercise

The point of this exercise it to take the shell script found in `convert-script.sh` and
convert it to an Ansible playbook.  This position doesn't assume you know ansible, but does expect
that you should be able to read the ansible docs and figure out how to update the sample file to complete the task.

## Prereqs
To complete this task you will need
* Virtual Box [download here](https://www.virtualbox.org/)
* Vagrant [download here](https://www.vagrantup.com/downloads.html)

## Getting started
Once you have installed the Prereqs, change to the main directory of this repo and run `vagrant up`, 
this will start building the testing environment for you which will install all the tools you need
to complete the task. 

You can update the file main.yml with the ansible configuration needed to replicate the functionality 
found in the `convert-script.sh` bash file.  When you are ready to test you can run `vagrant provision`

You can test if your ansible script is working by running: `vagrant ssh -c "curl http://localhost:8000"`
or you can use `vagrant ssh` to login to the machine to debug on the virtual machine.

## Specs
* Please fork this repo, and open a pull request back to this repo before you begin working. In this fashion, we can not only see your final output, but each piece of work as you go. This provides for an ongoing conversation throughout the entirety of your efforts here
* Replicate the functionality of `convert-script.sh` using ansible.
* Try to use best standards to complete the task.

## Finishing
When you are finished create a pull request against the repo with your code.

