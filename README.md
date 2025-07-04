# Budget-Track

**Budget-Track** is a personal finance tracker I built for myself. I used to keep track of my income and expenses using the Notes app on my MacBook Pro. There are plenty of apps out there for this, but most of them either charge for the good features or just don’t feel right to me.

I was also curious about how these apps work behind the scenes, so I decided to build my own version — something simple, web-based, and fully under my control.

---

## Running It Locally

This project isn’t meant for everyday users — it’s more of a dev tool for now. If you’re comfortable with Docker and the terminal, you’ll be up and running in no time.

### Steps:

1. Make sure Docker is installed on your machine
2. Clone this repo
3. Open a terminal and go to the project folder
4. Run:

```bash
docker compose up --build
```

That’s it! The backend, database, and frontend will all start up together.