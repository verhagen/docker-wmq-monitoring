FROM jetty:9
MAINTAINER Verhagen "https://github.com/verhagen"

# Cache date (see https://github.com/docker/docker/issues/3313)
ENV LAST_UPDATED "16-06-2015 11:30"

#RUN apt-get update && apt-get upgrade -q -y && \
#apt-get install aptitude -q -y && apt-get clean


#RUN aptitude update && aptitude install bash-completion \
#  openssh-server \
#  supervisor \
#  wget \
#  -q -y && apt-get clean


RUN mkdir -p /var/lib/jetty/tmp
RUN cd /var/lib/jetty/tmp
RUN wget https://dl.dropboxusercontent.com/u/68813606/wmq-monitoring/wmq-monitoring-0.2.2.zip
RUN unzip wmq-monitoring-0.2.2.zip
RUN mv dist/*.war /var/lib/jetty/webapps

#RUN mkdir /var/run/sshd
#RUN echo 'root:screencast' | chpasswd
#RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
#RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

#ENV NOTVISIBLE "in users profile"
#RUN echo "export VISIBLE=now" >> /etc/profile


# Make sure SSH and RDP are exposed to the outside world
#EXPOSE 22

#CMD ["supervisord", "-n"]
#CMD ["sshd", "-D"]
