## the aws cli

The **aws** tool provides a unified interface via the CLI to interface with AWS services. The tool is written in python and is dependent on the boto library (part of the python sdk). **aws** can be run on any system that supports the python interpreter. 

##installing aws cli (Macbook) 
>**Note:** if using a MacBook, you will first need to install [Homebrew](https://brew.sh/). 
>>/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

You can proceed to install the install command once brew is installed: 
> ~$ brew update 
> ~$ brew install awscli

##configure aws to access AWS APIs 
>**Note:** you will need your api access key and secrets keys to configure aws cli. Log into your account and navigate to **users** --> **select your user id** --> **security credentials** --> **Create access key**. Download the .csv file to and save the access key ID and secret access key to your computer.  

Once you have your access id and secrets, run the following on your local machine. 
> ~$ aws configure 
> AWS Access Key ID: [add access id]
> AWS Secret Access Key: [add secrets]
> Default region name: [us-east-1]
> Default output format: [json]

These settings are saved to your ~/.aws/config file in your home directory. 
