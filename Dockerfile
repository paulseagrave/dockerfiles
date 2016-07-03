FROM centos

RUN yum -y update; yum clean all
RUN yum -y install curl
RUN yum -y install epel-release


RUN yum -y install python34 \
#    && curl https://bootstrap.pypa.io/get-pip.py | python3.4 - \
    && yum -y clean all


RUN mkdir python_env && cd python_env && python3.4 -m venv --without-pip appenv
RUN . python_env/appenv/bin/activate; curl https://bootstrap.pypa.io/get-pip.py | python -

#ENTRYPOINT ["/python_env/appenv/bin/python", "/app/code.py"]
CMD ["bash", "--rcfile", "python_env/appenv/bin/activate"]