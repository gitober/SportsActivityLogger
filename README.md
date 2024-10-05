# Sports Activity Logger

## Objective
This application is designed to help track the time spent on sports activities during the week. It also demonstrates the use of version control with GitHub, continuous integration and deployment using Jenkins, containerization with Docker, and running the application in an online Docker environment using Docker Hub Lab.

## Features
- Log various sports activities with a description and duration.
- View all logged activities.
- Calculate the total time spent on activities for the week.
- Input validation to handle invalid inputs gracefully.

## Prerequisites
- **Java Development Kit (JDK) 17**: Ensure JDK 17 is installed.
- **Maven**: For building the project.
- **Docker**: For creating and running the Docker image.
- **Jenkins**: For setting up the CI/CD pipeline.

## Setup Instructions

### 1. Version Control with GitHub
1. Initialize a Git repository in your project directory:
    ```bash
    git init
    ```
2. Add your files and make frequent commits with meaningful messages:
    ```bash
    git add .
    git commit -m "Initial commit - Sports Activity Logger application"
    ```
3. Push the repository to your GitHub account:
    ```bash
    git remote add origin "https://github.com/your-username/sports-activity-logger.git"
    git push -u origin main
    ```
4. Ensure the repository contains a README file explaining the project and how to use the application.

### 2. Build the Project with Maven
Compile the code and run tests:
```bash
mvn clean install
