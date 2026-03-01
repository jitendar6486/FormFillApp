# 🚀 DevOps CI-CD Pipeline Project 

## 📌 Overview

This project demonstrates a complete **End-to-End CI/CD Pipeline** using Git, GitHub, Maven, Jenkins, and Tomcat Server to automatically build and deploy a Java web application.

The pipeline automates the process from code commit to application deployment.

---

## 🏗️ Architecture Diagram

```
Git Server → GitHub → Jenkins Server → Tomcat Server
```

Pipeline Flow:

1. Developer pushes code to Git Server
2. Code is mirrored to GitHub repository
3. Jenkins pulls code from GitHub
4. maven builds the project and creates WAR file
5️. Jenkins deploys WAR file to Tomcat Server
6️. Application runs on Tomcat

---

## 🛠️ Technologies Used

* Git (Version Control)
* GitHub (Remote Repository)
* Java (Application)
* Maven (Build Tool)
* Jenkins (CI/CD Automation)
* Apache Tomcat (Application Server)
* Linux Server (Deployment Environment)

---

## ⚙️ CI/CD Pipeline Workflow

### 🔹 Stage 1 — Source Code Management

* Code stored in Git Server
* Synced with GitHub repository
* Jenkins configured to pull latest code

---

### 🔹 Stage 2 — Build

Jenkins triggers Maven build:

```
mvn clean package
```

Output:

```
target/application.war
```

---

### 🔹 Stage 3 — Continuous Integration

Jenkins Job performs:

* Code checkout from GitHub
* Compilation
* Packaging
* Artifact generation (WAR file)

---

### 🔹 Stage 4 — Deployment

WAR file deployed to Tomcat Server:

```
/opt/tomcat/webapps/
```

Tomcat auto-deploys the application.

---

## 📂 Project Structure

```
DevOps-Project-2/
│
├── src/
├── pom.xml
├── Jenkinsfile (optional)
└── README.md
```

---

## ▶️ How to Run the Project

### 🔧 Prerequisites

Make sure the following are installed:

* Java JDK 8 or above
* Maven
* Git
* Jenkins
* Apache Tomcat
* Linux Server (Recommended)

---

### 🚀 Setup Steps

#### 1️⃣ Clone Repository

```
git clone https://github.com/your-username/DevOps-Project-2.git
```

---

#### 2️⃣ Build Using Maven

```
cd DevOps-Project-2
mvn clean package
```

---

#### 3️⃣ Deploy to Tomcat

Copy WAR file:

```
cp target/*.war /opt/tomcat/webapps/
```

Start Tomcat:

```
./startup.sh
```

---

#### 4️⃣ Access Application

```
http://<Tomcat-IP>:8080/webapp/
```



## 🤖 Jenkins Job Configuration

Jenkins Freestyle / Pipeline Job includes:

* GitHub Repository URL
* Maven Build Step
* Post-Build Deployment to Tomcat
* Automated Execution

---

## 🎯 Key Features

* Fully Automated Build & Deployment
* Continuous Integration
* Continuous Delivery
* Zero Manual Deployment
* Production-style DevOps Workflow

## 📌 Conclusion

This project demonstrates a complete end-to-end **CI/CD pipeline** for a Java web application using modern DevOps tools. By integrating Git, GitHub, Maven, Jenkins, and Apache Tomcat, the pipeline automates the entire software delivery process — from source code management to build, testing, and deployment.

The implementation highlights how continuous integration and continuous deployment improve development efficiency, reduce manual errors, and ensure faster release cycles. Whenever new code is committed to the repository, Jenkins automatically builds the application, generates a WAR file, and deploys it to the Tomcat server without manual intervention.




