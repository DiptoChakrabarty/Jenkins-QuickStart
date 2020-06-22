FROM  centos

RUN yum install openssh-server -y && \
    yum install  -y passwd && \
  yum install  -y  initscripts  && \
   useradd  sample && \
  echo "sample" | passwd sample --stdin && \
 mkdir /home/sample/.ssh  && \
  chmod 700 /home/sample/.ssh 

COPY  .ssh/id_rsa.pub /home/sample/.ssh/authorized_keys

RUN chown sample:sample -R /home/sample/.ssh/  && \
chmod 600  /home/sample/.ssh/authorized_keys

EXPOSE  22

RUN rm -rf /run/nologin

RUN   /usr/bin/ssh-keygen -A  && yum install mysql -y 

RUN yum -y install python-pip && \
      pip install --upgrade pip &&  pip install awscli

CMD   ["/usr/sbin/sshd", "-D"]