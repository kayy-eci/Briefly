# Briefly 📰> **"Your news, organized you."**

**Briefly** is a personal news reader app built with **Flutter** (Android-first). It fetches articles from a public News API and keeps all personal data — bookmarks, reading history interests, and name — storedentirely on device**. backend, no, no accounts.

**Version:** 1.0 — No-Backend / Local-Only Edition

---

## ✨ Features

- **🎯 Personalized Feed** — your favorite categories during onboarding and get a "For You" feed tailored to your interests.
- **🏠 Smart Home Screen** — Time-based greetings, daily Top Story, trending topics, and a pull-to-refresh feed.
- **📰 Browse by Category** — Filter news by category with infinite scroll and skeleton loading states.
- **🔍 Full Search** — Debounced search with popular suggestions and category exploration.
- **🔔 Simulated Notifications** — Local notifications for new articles in your favorite categories since you opened the appwith unread badge- **🔖 Book & Reading History — Save articles for later and revisit you've read, grouped by date.
- **👤 Profile & Stats** — See how many articles you've read, how many you've saved, and top interests.
- **🌗 Theme** — Light,, or system.

---

## 🛠 Tech Stack

| Layer | Choice | Notes |
||---|---|
| Framework | Flutter + Dart | Android-first |
| State Management | [Riverpod](https://pub.dev/packages/flutter_riverpod) | Plain providers, no code-gen |
| Routing | [go_router](https://pub.dev/packages/go_router) | `StatefulShellRoute.indexedStack` for bottom nav |
| News Source | [NewsData.io](https://newsdata.io) / [GNews](https://gnews.io) | Public News API |
| Local Storage | [shared_preferences](https://pub.dev/packages/shared_preferences) | Bookmarks, history, interests, settings |
| Backend / Server | **** | Fully by design |

### News API Comparison

| API | Freeota | Notes |
|---|------|
|NewsData.io *(recommended)* 200 requests/day Can be used testing |
| GNews | 100 requests/day | Non-commercial free tier, great for school projects |

---

## 🏗 Architecture

```
Onboarding (first launch only)
  → your name
  → Pick at least 3 favorite categories

Bottom Navigation
├── 🏠 Home
├── 📰 News
├── 🔍 Search
├── 🔔 Notifications
└── 👤 Profile
     ├── Saved Articles
     ├── Reading History
     ├── My Interests
     └── Settings

Article Detail (dedicated page, opened from any card)
```

### Local Data Schema

 user data is stored locally via `shared` (complex objects encoded as JSON| Key | Type | Description |
||---|---|
| `user_name` | String | Name entered during onboarding |
| `onboarding_completed` | bool | Whether onboarding has been completed |
| `user_interests` | `List<String>` | Favorite categories |
| `bookmarks` | `List<String>` (JSON per item) | Article snapshots |
| `reading_history` | `List<String>` (JSON per item) | Article snapshots + `readAt` |
| `last_opened_at` | String (ISO 8601) | Used for simulated notification logic |
| `theme_mode` | String | `light` / `dark` / `system`> **Note:** Since articles come from an external News API (no stable IDs our system), bookmarks and reading history store **full article snapshots** rather than IDs so they remain viewable even after articles disappear from the API.

---

## 🚀 Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) ( channel)
- An Android device or emulator
- A free API key from [Data.io](https://newsdata.io or [GNews](https://news.io)

### Installation

```bash
# Clone the repository
git clone https://github.com/<your-username>/briefly.git
cd briefly

# Install dependencies
flutter pub get

# Add your News API key, then run
flutter run
```

---

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter  http: ^1.2.2
  shared_preferences: ^2.3.3
  cached_network_image: ^3.4.1
  flutter_riverpod: ^3.4.
  go_router: ^162.0
 intl: ^0.19.0
  timeago: ^3.7.0
  share_plus: ^11.0.0
  skeletonizer: ^1..2

dev_dependencies:
  flutter_lints: ^6.0.0
```

---

## 🗺 Roadmap (Phase 2 — Optional)

If the project is continued as a production-grade portfolio piece, the following are planned:

| Area | Plan |
|---|---|
| Auth & Sync | Add backend (PocketBase / Firebase / Supabase) for real accounts and cross-device sync |
| Push Notifications | Firebase Cloud Messaging + `flutter_local_notifications` |
| Relational Database | Backend tables (`articles`, `bookmarks`, `reading_history`) for real CRUD & data relations |
| Own Content | Admin panel for our own articles instead of relying on a third-party API |

---

## 📌 Design Notes

Briefly was originally designed with a full backend (Supabase → Firebase → PocketBase), including authentication, a relational database, and real-time notifications. After evaluation, that architecture was deemed too heavy for a school project — the hosting/deployment overhead wasn't part of the grading focus.

**v1. was therefore re-scoped to be completely backend-free:**

- News content comes a **public News API** instead of a self-hosted database.
- All personal data is stored **locally on-device** via `shared_preferences`.

The codebase intentionally maintains clean architecture (state management, routing, separation of concerns) so it remains technically valuable and assessable and ready for a backend in Phase 2.

---

## 📄 License

 project was built as a mobile app development course project.

---

*Want to contribute suggest improvements? Feel free to open an issue or pull request!*
