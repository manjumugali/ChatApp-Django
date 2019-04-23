
FROM python:3.6.7

# Set PYTHONUNBUFFERED so output is displayed in the Docker log
ENV PYTHONUNBUFFERED=1

COPY ChatApp-Django/ /usr/src/chatapp
# Copy the rest of the applicaion's code
COPY requirements.txt /usr/src/chatapp/
COPY ChatApp-Django	/usr/src/chatapp/
COPY Chat_App	/usr/src/chatapp/
COPY manage.py /usr/src/chatapp/

WORKDIR /usr/src/chatapp/

# Install dependencies
RUN pip3 install -r requirements.txt

# Run the app
COPY start.sh /usr/src/chatapp/
CMD ["./start.sh"]

EXPOSE 8000
