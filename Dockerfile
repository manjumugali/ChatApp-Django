
FROM python:3.6.7

# Set PYTHONUNBUFFERED so output is displayed in the Docker log
ENV PYTHONUNBUFFERED=1

COPY /ChatApp-Django/ /usr/src/chatapp
# Copy the rest of the applicaion's code
COPY /ChatApp-Django/requirements.txt /usr/src/chatapp/

WORKDIR /usr/src/chatapp/

# Install dependencies
RUN pip3 install -r requirements.txt

# Run the app
COPY start.sh /usr/src/chatapp/
CMD ["./start.sh"]

EXPOSE 8000
