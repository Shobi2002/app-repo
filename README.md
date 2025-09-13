# App Repo – XOps Sample Application 🚀

This repository contains the **source code**, **Dockerfile**, and **CI/CD pipeline** configuration for the **xops-app**.  
The app is containerized, pushed to a container registry, and deployed to Kubernetes via **Argo CD**.

---

## 📂 Repo Structure

app-repo/
├── Dockerfile # Container build instructions
├── index.html / app.py # Sample app code (depending on stack)
├── .github/workflows/ # GitHub Actions CI/CD pipeline
│ └── cicd.yaml
└── README.md # This file


---

## ⚙️ CI/CD Workflow

1. **Developer pushes code** → triggers GitHub Actions workflow.
2. Workflow:
   - Builds Docker image
   - Pushes image to container registry (`shobanavijayan/app-repo:latest`)
   - Updates **infra-repo** manifests with the new image tag
3. **Argo CD** detects the change in `infra-repo` and syncs it to Kubernetes.
4. ✅ New version of the app is deployed automatically.

---

## 🐳 Build & Run Locally

### Build Docker Image
```bash
docker build -t shobanavijayan/app-repo:latest .


Run Locally
docker run -p 8080:80 shobanavijayan/app-repo:latest


Access app: 👉 http://localhost:8080

✅ Status

CI/CD Pipeline → Passing

Image Build → Successful

Deployment → Automated via Argo CD 🎉
