# Google Cloud Platform - SDK 

This repo helps you install the google cloud SDK and configure Google cloud CLI tools to manage your google cloud environment. 



## Getting started

### Requirements

- Docker , GCP Account
- Make sure that you are connected to Internet 

### Folder Structure 

- `Dockerfile` -> CentOS based base image to install google SDK.
- `bash.sh` -> Script that get into the running docker container
- `build.sh` -> Build script to build the container
- `gcp.sh` -> Script that emulates gcloud SDK experience
- `Dockerfile_alphine` -> 'Ignore this file'
- `Cert` -> Contains ge certs to pull images and add-on tools.

### Steps

- **Build**: Execute `./build.sh'

### Validate 
   To confirm that the install was successful, please execute the following command 

- `./gcp.sh version`  

   You should see Google cloud SDK information. 


### Basic commands

- `./gcp.sh components list ` -->  To list which components we already have installed and which are available to use.

### GCP SDK Login

- `./gcp.sh auth login` -->  To login to gcp account.   you may see url as shown below. For example: - 

https://accounts.google.com/o/oauth2/auth?redirect_uri=urn%3Aietf%3Awg%3Aoauth%3A2.0%3Aoob&prompt=select_account&response_type=code&client_id=32555940559.apps.googleusercontent.com&scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcloud-platform+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fappengine.admin+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcompute+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Faccounts.reauth&access_type=offline

* Now, launch Google Chrome browser and paste the copied URL from the terminal.  
* Copy the OTP (Key) to command line. 
* `./gcp.sh config list` -> You should see your email ID as blank in the configuration list.
* `./gcp.sh config set account ACCOUNT` --> For ex: ./gcp.sh config.sh set account raj.ramalingam@dev.fullstream.ai.
* `./gcp.sh config list` -> You should see your email ID and set in the configuration list.
* `./gcp.sh config set project ProjectID` -> Copy the project ID from the google cloud console. 

