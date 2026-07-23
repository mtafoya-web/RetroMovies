# RetroMovies 🎬

A Java Spring Boot web application for browsing retro movies, built using the Java Template Engine (JTE). This project demonstrates server-side rendering, session management, and HTTP cookie handling.

---

## 🚀 Features

* **Server-Side Rendering with JTE:** Fast and type-safe HTML template rendering.
* **Session & Cookie Management:** Maintains user state and preferences across sessions using Spring Boot state management.
* **Maven Archetype Base:** Standardized Java project setup managed via Apache Maven.

---

## 🛠️ Tech Stack

* **Language:** Java 17+
* **Framework:** Spring Boot
* **Templating Engine:** [JTE (Java Template Engine)](https://jte.gg/)
* **Build Tool:** Apache Maven
* **Frontend:** HTML5, CSS3

---

## 📦 Project Structure

```text
RetroMovies/
├── .mvn/              # Maven wrapper files
├── src/
│   ├── main/
│   │   ├── java/      # Spring Boot application source code
│   │   └── resources/ # JTE templates, static assets (CSS), application properties
│   └── test/          # Unit and integration tests
├── mvnw               # Maven wrapper executable (Unix)
├── mvnw.cmd           # Maven wrapper executable (Windows)
└── pom.xml            # Maven project dependencies and plugins
