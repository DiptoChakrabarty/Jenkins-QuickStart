FROM  centos

RUN yum install openssh-server -y && \
   useradd  sample && \
  echo "sample" | passwd sample --stdin && \
 mkdir /home/sample/.ssh  && \
  chmod 700 /home/sample/.ssh

