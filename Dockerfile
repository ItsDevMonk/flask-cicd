FROM python:3.8-slim
WORKDIR /app
RUN python -m pip install pip --upgrade
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
CMD python app.py