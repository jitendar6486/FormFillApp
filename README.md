# 🚀 DevOps CI-CD Pipeline Project 

## 📌 Overview

This project demonstrates a complete DevOps CI/CD pipeline for deploying a Java web application using modern DevOps tools.

The pipeline automates the process from code commit → build → Docker image creation → deployment using Jenkins, Maven, Ansible, Docker, and DockerHub.
---
Pipeline Flow:
1. Developer pushes code to Git Server
2. Code is mirrored to GitHub repository
3. Jenkins pulls the latest code from GitHub
4. Maven builds the project and generates a WAR file
5. Jenkins triggers Ansible playbook for deployment
6. Ansible builds the Docker image using Dockerfile
7. Docker image is tagged and pushed to DockerHub
8. Docker Server pulls the image from DockerHub
9. Docker container is created using Tomcat image
10. WAR file is deployed inside Tomcat container
11. Application runs inside Docker container
12. Users access the application via browser

---

## 🛠️ Technologies Used

* Git (Version Control)
* GitHub (Remote Repository)
* Java (Application Development)
* Maven (Build Tool)
* Jenkins (CI/CD Automation)
* Ansible (Configuration Management & Deployment)
* Docker (Containerization Platform)
* DockerHub (Container Image Registry)
* Apache Tomcat (Application Server)
* Linux (Server Environment)

---

## ⚙️ CI/CD Pipeline Workflow

### 🔹 Stage 1 — Source Code Management
* Application code stored in Git Server
* Code mirrored to GitHub repository
* Jenkins configured to pull the latest code from GitHub
---
### 🔹 Stage 2 — Build

Jenkins triggers Maven build:

```
mvn clean package
```

Output:

```
target/regapp.war
```

---

### 🔹 Stage 3 — Continuous Integration
Jenkins Job performs:
* Source code checkout from GitHub
* Java compilation
* Packaging using Maven
* WAR file generation
---
### 🔹 Stage 4 — Docker Image Creation
Ansible playbook builds the Docker image using Dockerfile:

---
### 🔹 Stage 5 — Docker Image Push

Docker image is tagged and pushed to DockerHub:

---

### 🔹 Stage 6 — Deployment

Docker server pulls the image and runs the container:


The application runs inside a **Tomcat container**.

---

### 🔹 Stage 7 — Application Access

Users can access the application via browser:

## 📂 Project Structure
```
FormFillApp/
│
├── server/
├── webapp/
├── Dockerfile
├── pom.xml
├── regapp-deploy.yml
├── regapp-service.yml
└── README 

## 🎯 Key Features

* Automated CI/CD Pipeline
* Dockerized Java Application
* Jenkins + Ansible Deployment
* Fast and Reliable Releases
```
## 📌 Conclusion

This project demonstrates an end-to-end **CI/CD pipeline** for a Java web application using DevOps tools like Git, GitHub, Maven, Jenkins, Ansible, and Docker. The pipeline automates the process of building, containerizing, and deploying the application, ensuring faster and more reliable software delivery.

