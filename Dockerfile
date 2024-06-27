#base image to run python app
FROM python:3.8

#set working directory
WORKDIR /app

#copy requirements.txt
COPY requirements.txt .

#install dependencies
RUN pip install -r requirements.txt

#copy app
COPY . .

#Expose the port the flask application is listening to
EXPOSE 5000

#run the application
CMD ["python", "app.py"]