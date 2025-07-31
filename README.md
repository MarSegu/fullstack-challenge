# Fullstack Challenge

<p align="center">
  <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License: MIT" />
  <img src="https://img.shields.io/badge/JavaScript-65.4%25-blue" alt="Main Language" />
  <img src="https://img.shields.io/badge/status-active-brightgreen" alt="Status" />
</p>



---

## ✨ Overview

**Fullstack Challenge** is a modern, hands-on repository designed for fullstack development and DevOps experimentation. It provides everything you need to build, deploy, and automate contemporary applications, following best industry practices. This repository blends real-world coding challenges, infrastructure as code, and DevOps automation, empowering you to develop and scale robust solutions.

---

## 🎨 Tech Stack

<div align="center">

| Language / Tool     | Usage                                              |
|---------------------|---------------------------------------------------|
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/javascript/javascript-original.svg" width="24"/> JavaScript | Main application logic & scripting            |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/terraform/terraform-original.svg" width="24"/> HCL (Terraform) | Infrastructure as Code (IaC)                 |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/css3/css3-original.svg" width="24"/> CSS        | Responsive, modern frontend styling           |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg" width="24"/> HTML     | Structure & static resources                  |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" width="24"/> Docker | Containerization & deployment (recommended)   |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" width="24"/> GitHub Actions | CI/CD automation                            |

</div>

---

## 🗂️ Project Structure

```text
.
├── src/                 # Application source code
├── infra/               # Infrastructure as Code (HCL/Terraform)
├── scripts/             # Automation scripts
├── public/              # Static assets (HTML/CSS/Images)
├── .github/workflows/   # CI/CD pipelines (GitHub Actions)
├── Dockerfile           # Container image definition
└── README.md            # Project documentation
```

---

## ⚡ Features

- **Fullstack application** ready for development, testing, and deployment
- **DevOps automation**: CI/CD, testing, linting, and deployment workflows
- **Reproducible infrastructure** with HCL/Terraform
- **Clear documentation** and well-commented code for smooth collaboration
- **Elegant, modern codebase** designed for learning and scalability

---

## 🛠️ Getting Started

> **Clone, install, and run in minutes.**

```bash
# Clone the repository
git clone https://github.com/MarSegu/fullstack-challenge.git
cd fullstack-challenge

# Install dependencies
npm install

# (Optional) Deploy infrastructure
cd infra
terraform init
terraform apply

# Run the app locally
npm run dev
```

---

## 🧪 Testing

```bash
npm test
```

---

## 🚀 Deployment

- **Docker Container:**
  ```bash
  docker build -t fullstack-challenge .
  docker run -p 3000:3000 fullstack-challenge
  ```

- **CI/CD:** Automated via workflows under `.github/workflows/`.

---

## 🤝 Contributing

Contributions are welcome! Please open an issue or pull request to discuss improvements or propose changes.

---

## 📃 License

Distributed under the MIT License. See [LICENSE](LICENSE) for more details.

---

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&height=110&section=footer"/>
</p>

<p align="center">
  <sub>Crafted with passion by <a href="https://github.com/MarSegu">MarSegu</a> • 2025</sub>
</p>
