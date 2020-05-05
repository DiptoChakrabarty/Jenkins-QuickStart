FROM  centos

RUN yum install openssh-server -y && \
   useradd  sample && \
  echo "sample" | passwd sample --stdin && \
 mkdir /home/sample/.ssh  && \
  chmod 700 /home/sample/.ssh

COPY  .ssh/id_rsa.pub /home/sample/.ssh/authorized_keys

RUN chown sample:sample -R /home/sample/.ssh/  && \
chmod 600  /home/sample/.ssh/authorized_keys

RUN   /usr/sbin/sshd-keygen

CMD  /usr/sbin/sshd -D