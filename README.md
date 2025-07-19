# ChaosLab 🔥

> Jenkins + Loki + Grafana-based chaos engineering and observability playground.

ChaosLab is a minimal simulator that helps you explore how chaos impacts a system in real-time using:
- Jenkins pipelines to trigger failures (like CPU hog, app kill, or network delay)
- Loki to collect logs from the app
- Grafana dashboards to visualize system behavior

---

## 🔧 Run Locally

```bash
docker-compose up --build
```

## 📦 Trigger Chaos Jobs

Visit Jenkins: [http://localhost:8080](http://localhost:8080)

Use the `CHAOS_TYPE` dropdown when triggering the pipeline:
- `CPU_HOG` – Simulates a CPU spike
- `KILL_APP` – Kills the Flask app
- `NETWORK_DELAY` – Adds artificial latency

---

## 📊 View Logs & Dashboards

- **Grafana**: [http://localhost:3000](http://localhost:3000)
  - Use Loki as a data source to explore logs
  - Search for labels like `{job="flask_app"}`

---

## 📁 Project Structure

```
ChaosLab/
├── app/                  # Flask app
├── chaos_scripts/        # Bash chaos scripts
├── jenkins/              # Jenkins pipeline config
├── grafana/              # Dashboards (optional)
├── promtail-config.yaml
├── docker-compose.yml
├── README.md
```

---

## 🌐 Deployment (WIP)

We are hosting a public demo via **Render.com** or **Railway.app**.

Stay tuned for:
- Live Grafana dashboards
- Jenkins UI access
- Shareable project link

---

## 👨‍💻 Author

ChaosLab by [Sree] – for educational & research use.
