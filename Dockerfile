#Offical Python 
FROM python 

#Setting Workdir 
WORKDIR /app 

#Copy the requirements file and install dependencies 
COPY requirements.txt .
RUN pip install -r requirements.txt

#Copy application code 
COPY . .

#Expose the Port 
EXPOSE 5000

#Run 
CMD ["python", "app.py"]