FROM python:3.12.5

WORKDIR /app

COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

EXPOSE 8080

COPY . .

ENTRYPOINT ["streamlit", "run"]
CMD ["streamlit_app.py", "--server.port", "8080"]
