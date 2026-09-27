# DatingApp 💕

A full-stack dating web application built with **C# (.NET)** and **Angular**, following the course by **Neil Cummings**. Users can register, browse potential matches, and interact through a real-time messaging system.

🔗 **Live Demo:** [https://datingapp-1vj1.onrender.com](https://datingapp-1vj1.onrender.com)

> ⚠️ **Note:** This app is hosted on Render's free tier. The first load may take 30–60 seconds while the server spins up. Please be patient!

---

## ✨ Features

- 🔐 **Authentication & Authorization** — JWT-based auth with role support
- 👤 **User Profiles** — Create, edit, and manage detailed profiles with photos
- 🔍 **Match Discovery** — Browse and filter potential matches
- ❤️ **Likes & Matches** — Like users and see who likes you back
- 💬 **Real-Time Messaging** — Instant chat between matched users via SignalR
- 📸 **Photo Management** — Upload, set main photo, and delete photos
- 📱 **Responsive UI** — Built with Angular and Bootstrap for a modern, mobile-friendly experience
- 🐳 **Docker Support** — Containerized for consistent deployment

---

## 🛠️ Tech Stack

### Backend

- **C# / .NET 8** — Web API
- **Entity Framework Core** — ORM
- **PostgreSQL (Neon)** — Serverless cloud database
- **ASP.NET Core Identity** — Authentication
- **JWT Tokens** — Secure API access
- **SignalR** — Real-time messaging
- **Cloudinary** — Photo storage

### Frontend

- **Angular 18** — SPA framework
- **TypeScript**
- **Bootstrap** — Styling
- **ngx-toastr / ngx-spinner** — UX enhancements
- **SignalR Client** — Real-time communication

### DevOps

- **Docker** — Containerization
- **GitHub Actions** — CI/CD
- **Render** — Hosting
- **Neon** — Serverless PostgreSQL

---

## 🚀 Getting Started

### Prerequisites

- [.NET 8 SDK](https://dotnet.microsoft.com/download)
- [Node.js](https://nodejs.org/) (v18+)
- [Angular CLI](https://angular.io/cli)
- [Docker](https://www.docker.com/) (optional)
- A **PostgreSQL** database (local or [Neon](https://neon.tech))

### 1. Clone the Repository

```bash
git clone https://github.com/Bevanwhite/DatingApp.git
cd DatingApp
```

### 2. Configure the API

Navigate to the `API` folder and update `appsettings.Development.json` with your credentials:

```json
{
    "ConnectionStrings": {
        "DefaultConnection": "YOUR_POSTGRES_CONNECTION_STRING"
    },
    "TokenKey": "YOUR_SUPER_SECRET_LONG_TOKEN_KEY_HERE",
    "CloudinarySettings": {
        "CloudName": "YOUR_CLOUD_NAME",
        "ApiKey": "YOUR_API_KEY",
        "ApiSecret": "YOUR_API_SECRET"
    }
}
```

> 💡 **Using Neon?** Copy your connection string from the Neon dashboard and paste it into `DefaultConnection`.

### 3. Run the Backend

```bash
cd API
dotnet restore
dotnet run
```

API will be available at `https://localhost:5001`.

### 4. Run the Frontend

```bash
cd client
npm install
ng serve
```

App will be available at `http://localhost:4200`.

---

## 🐳 Docker

Build and run the app with Docker Compose:

```bash
docker build -t datingapp .
docker run -p 8080:80 datingapp
```

Or use the provided `Makefile`:

```bash
make build
make run
```

---

## 📁 Project Structure

```
DatingApp/
├── API/ # .NET Web API backend
│ ├── Controllers/ # API endpoints
│ ├── Entities/ # Database models
│ ├── Data/ # EF Core DbContext & migrations
│ ├── Services/ # Business logic
│ ├── SignalR/ # Real-time messaging hubs
│ └── Middleware/ # Custom middleware (error handling, etc.)
├── client/ # Angular frontend
│ └── src/
│ ├── app/ # Components, services, guards
│ └── assets/ # Static files
├── .github/workflows/ # GitHub Actions CI/CD
├── Makefile
└── DatingApp.sln
```

---

## 🔐 Environment Variables

For production (Render), configure the following environment variables:

| Variable                               | Description                       |
| -------------------------------------- | --------------------------------- |
| `ConnectionStrings__DefaultConnection` | Neon PostgreSQL connection string |
| `TokenKey`                             | Secret key for JWT signing        |
| `CloudinarySettings__CloudName`        | Cloudinary cloud name             |
| `CloudinarySettings__ApiKey`           | Cloudinary API key                |
| `CloudinarySettings__ApiSecret`        | Cloudinary API secret             |
| `ASPNETCORE_ENVIRONMENT`               | `Production`                      |

---

## 🗄️ Database

This app uses **PostgreSQL** hosted on [Neon](https://neon.tech) — a serverless, auto-scaling Postgres platform. Migrations are applied automatically on startup in production.

To apply migrations manually:

```bash
cd API
dotnet ef database update
```

To create a new migration:

```bash
dotnet ef migrations add <MigrationName>
```

---

## 📜 Available Scripts

### Backend

| Command                     | Description           |
| --------------------------- | --------------------- |
| `dotnet run`                | Start the API         |
| `dotnet watch run`          | Start with hot reload |
| `dotnet ef database update` | Apply migrations      |
| `dotnet build`              | Build the project     |

### Frontend

| Command    | Description      |
| ---------- | ---------------- |
| `ng serve` | Start dev server |
| `ng build` | Production build |
| `ng test`  | Run unit tests   |

---

## 🤝 Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request.

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## 🙏 Acknowledgements

- **[Neil Cummings](https://github.com/TryCatchLearn)** — Original course instructor for the DatingApp tutorial
- **[Neon](https://neon.tech)** — Serverless PostgreSQL
- **[Render](https://render.com)** — Cloud hosting
- **[Cloudinary](https://cloudinary.com)** — Image management

---

## 📄 License

This project is for educational purposes. Please refer to the original course materials for licensing details.

---

## 📬 Contact

**Bevan White** — [GitHub](https://github.com/Bevanwhite)

⭐ If you found this project helpful, please give it a star!
