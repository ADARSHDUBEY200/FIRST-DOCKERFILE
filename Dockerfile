#THIS IS THE BASE IMAGE FOR EXTRACTING ALL REQUIRED TOOLS AND THE LIBRARIES FOR MAKING THE CONTAINER 
FROM openjdk:17-jdk-alpine

#Creating a folder where the app code will be stored 
WORKDIR /app

#COPY THE SOURCE CODE OF MY HOST MACHINE TO THE CONTAINER 
COPY src/Main.java /app/Main.java

#COMPILE THE APPLIVCATION CODE 
RUN javac Main.java

#RUN THE APPLICATION 
CMD ["java","Main"]