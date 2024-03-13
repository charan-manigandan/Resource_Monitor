# Resource_Monitor
A  AWS Resource Manager using shell scripting 

## Installation

Install Resource Manager using git clone.

```bash
  git clone https://github.com/charan-manigandan/Resource_Monitor.git
```  

## Instructions 

- To download a PEM file - In the left navigation pane, under Network & Security, choose Key Pairs. 
- Choose Create Key Pair and name your key pair your AWS Management Console username (e.g. student01). Choose Create. A PEM file is downloaded in your browser.
- open your local terminal and enter the command
- Note: distro versions can vary

```bash
ssh -i ~/Downloads/your_key.pem ubuntu@123.45.67.89
```

enter your credentials to env 
```bash
~ aws configure
sample :
AWS Access Key : Enter your access key
AWS Secret Access Key: Enter your secret access key
Default region name: us-east-1
Default ouput format: json
```

Edit your aws_resource_tracker with your favourite editor
```bash
  nano aws_resource_tracker
```

if nano being used close it with ctrl + x
press y when asked to save changes and press enter

giving all permissions 
```bash
chmod 777 script.sh
```

run your script using pipe, you can even just run the file 
```bash
./script.sh | more
```

for an instance ec2 describe-instances give us a large json text so we can control the info by 
```bash
~ aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
```






