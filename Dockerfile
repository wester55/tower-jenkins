FROM fedora
MAINTAINER Sasha Segal <wester.55@gamil.com>
EXPOSE 10222
RUN dnf -y update && dnf -y install openssh-server
USER 10010
CMD ["/usr/sbin/sshd", "-D"]
