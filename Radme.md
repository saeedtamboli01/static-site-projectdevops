# 🚀 Simple CI/CD Pipeline (Jenkins)

A minimal Jenkins pipeline that builds, tests, and deploys automatically when you push code to GitHub.

---

## 🧩 Jenkinsfile

```groovy
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo '🏗️ Building the project...'
            }
        }

        stage('Test') {
            steps {
                echo '🧪 Running tests...'
            }
        }

        stage('Deploy') {
            steps {
                echo '🚀 Deploying application...'
            }
        }
    }

    post {
        success {
            echo '✅ Pipeline completed successfully!'
        }
        failure {
            echo '❌ Pipeline failed!'
        }
    }
}
```

---

## ⚙️ Setup Steps

1. Clone your repo:

   ```bash
   git clone https://github.com/saeedtamboli01/static-site-projectdevops.git
   ```
2. Build and run Jenkins:

   ```bash
   docker run -d -p 8080:8080 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
   ```
3. Open Jenkins → Create a new **Pipeline** job.
4. Connect GitHub repo and use your `Jenkinsfile`.
5. Click **Build Now**.

---

## 🖥️ Output

You’ll see animated logs like:

```
🏗️ Building the project...
🧪 Running tests...
🚀 Deploying application...
✅ Pipeline completed successfully!
```

---

## 💡 Tips

* Change the `echo` messages to real commands later.
* Use GitHub Webhooks to auto-trigger Jenkins when pushing new commits.
