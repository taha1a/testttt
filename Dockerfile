FROM python:3.14.0rc1

WORKDIR /app

COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

EXPOSE 8080

COPY . .

ENTRYPOINT ["streamlit", "run"]
CMD ["streamlit_app.py", "--server.port", "8080"]
