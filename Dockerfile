FROM centos:7 

MAINTAINER Raj Ramalingam <Raj.Ramalingam@bhge.com>

ARG http_proxy
ARG https_proxy
ARG no_proxy

RUN yum update -y

# Add GE certificates to Trust
COPY cert/*.crt /etc/pki/ca-trust/source/anchors/
RUN update-ca-trust


#Install basic tools... 
RUN yum install -y wget

#Install 'which'
RUN yum install -y which



#Install Google cloud SDK
RUN echo "[google-cloud-sdk]" > /etc/yum.repos.d/google-cloud-sdk.repo
RUN echo "name=Google Cloud SDK" >> /etc/yum.repos.d/google-cloud-sdk.repo
RUN echo "baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64" >> /etc/yum.repos.d/google-cloud-sdk.repo
RUN echo "enabled=1" >> /etc/yum.repos.d/google-cloud-sdk.repo
RUN echo "gpgcheck=1" >> /etc/yum.repos.d/google-cloud-sdk.repo
RUN echo "repo_gpgcheck=1" >> /etc/yum.repos.d/google-cloud-sdk.repo
#RUN echo "gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg" >> /etc/yum.repos.d/google-cloud-sdk.repo
#RUN echo "       https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg" >> /etc/yum.repos.d/google-cloud-sdk.repo

RUN echo "gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg \
       https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg" >> /etc/yum.repos.d/google-cloud-sdk.repo


RUN yum install -y google-cloud-sdk
