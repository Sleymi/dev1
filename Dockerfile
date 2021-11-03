FROM python

COPY requirements.txt .

RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip3 install -r requirements.txt

COPY src/ .

CMD ["python3", "./myapp.py"]
