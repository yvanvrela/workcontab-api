FROM python:3.10

WORKDIR /home/workcontab

RUN mkdir -p /home/workcontab

COPY ./requirements.txt /home/workcontab/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /home/workcontab/requirements.txt

COPY . /home/workcontab

EXPOSE 8000

CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8000"]

