# terraform-gcp-telegram-bot

1. created GCP VM, inside VM, manually setup telegram bot which runs systemd 24/7.

# DevOps Job Finder Bot

Telegram bot that monitors DevOps/job-related Telegram groups and channels, detects relevant job posts, and stores job data in SQLite.

The bot runs on a Google Cloud Platform (GCP) VM and is managed by systemd for 24/7 operation.

---

## Architecture

```text
Windows PC
   |
   | gcloud compute scp
   ↓
GCP VM
   |
   └── /home/sulta/simple-bot/
        ├── bot.py
        ├── .env
        ├── devops_job_finder.session
        ├── jobs.db
        ├── requirements.txt
        └── venv/
             |
             └── Python environment
                  |
                  └── systemd
                       |
                       └── devops-job-finder.service