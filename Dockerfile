FROM amd64/python:latest

WORKDIR /app

COPY requirements.txt setup.py ./

COPY staking_deposit ./staking_deposit


RUN pip3 install -r requirements.txt

RUN python3 setup.py install

ARG cli_command

ENTRYPOINT [ "python3", "./staking_deposit/deposit.py" ]

CMD [ $cli_command ]
