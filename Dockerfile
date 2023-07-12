FROM python:3.9-slim-buster

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ssh && \
    rm -rf /var/lib/apt/lists/*

RUN pip install ansible

CMD [ "ansible-playbook", "--version" ]
