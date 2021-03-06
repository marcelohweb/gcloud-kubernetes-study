FROM python:3.8

WORKDIR /usr/src/app

COPY Pipfile Pipfile.lock /usr/src/app/

RUN pip install pipenv

RUN pipenv install --deploy --system

COPY main.py /usr/src/app

CMD ["main.py"]

ENTRYPOINT [ "python" ]