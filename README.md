# WSO2 Identity Server - Vagrant (VirtualBox)

I'm exploring the product and decided to roll my own installation.

## Requirements

1.  Vagrant + VirtualBox
2.  Ansible
3.  `briancoca.oracle_java7` installed from Ansible Galaxy (see below).
4.  WSO2 Identity Server zip file placed in the `provision/files` directory (see below).

**Notes:**

1. To install the `briancoca.oracle_java7` roles, simply type `ansible-galaxy install briancoca.oracle_java7`.  You may need to use `sudo` depending on permissions and location of the your Ansible install.

2. I can't just `wget` the WSO2 IS binary for you.  WSO2 controls the download, so you will need to visit their site and follow the steps to retrieve it.  As of this commit, the version of WSO2 IS available is 5.0.0.  This means the file expected in the `share` directory is named `wso2is-5.0.0.zip`.  If you want to use a later version, please update the `provision/playbook.yml` file with the correct name of the file.

## Getting Started.

1.  From the root directory: `vagrant up`.
2.  You should be able to access Identity Server at [https://localhost:9443/carbon](https://localhost:9443/carbon) (username=*admin*, password=*admin*).
