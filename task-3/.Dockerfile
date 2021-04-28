FROM gitlab/gitlab-ce:13.9.7-ce.0

## Setup##
RUN apt - get update &&
apt - get install - y supervisor &&
mkdir /
var / data / gitlab
COPY . / supervisor.conf / etc / supervisor / conf.d /

EXPOSE 22 443
VOLUME ['/etc/gitlab', '/var/log/gitlab', '/var/opt/gitlab']
CMD ["/usr/bin/supervisord"]