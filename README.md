# Beach Circle

Beach Circle is a mobile application created as a five-person Computer Science team project at California State University, Long Beach (CSULB).

The app is designed to bring campus information, community features, and student resources into one place. It combines campus navigation, weather, event discovery, forums, dorm-life features, and student resources in a Flutter application backed by Firebase.

## Features

- User authentication with Firebase Authentication
- CSULB campus map powered by Mapbox
- Campus map filters for:
  - Food alerts
  - Parking
  - Electrical outlets
  - Bathrooms
  - Study halls
- Weather information for the CSULB campus and the user's current location
- Event board for campus events
- Dorm-life event features
- Student discussion forums
- Hours and capacity information
- Student resource links
- Feedback and analytics features
- Firebase Cloud Messaging notifications
- Content moderation and reporting tools

## Technologies

- Flutter
- Dart
- Firebase Authentication
- Cloud Firestore
- Firebase Storage
- Firebase Cloud Messaging
- Firebase Cloud Functions
- Mapbox Maps SDK
- OpenWeather API
- REST API integration
- Geolocation and geocoding
- Git and GitHub

## My Contributions

This was a team project, so the repository contains work from multiple contributors.

My contributions included:

- Contributed to approximately 10 of the project's 20 core feature modules
- Worked on Mapbox-based campus mapping and custom map pins
- Implemented location-based functionality for campus features
- Integrated weather functionality across 7+ CSULB campus locations
- Assisted with user interface development
- Performed extensive debugging and troubleshooting across the application
- Helped integrate features developed by different team members
- Presented multiple project demonstrations during class

## Project Structure

The main Flutter application is located in:

```text
beach_circle_flutter/
├── lib/          # Flutter application source code
├── assets/       # Images, weather animations, and campus data
├── functions/    # Firebase Cloud Functions
├── android/      # Android platform files
├── ios/          # iOS platform files
└── test/         # Flutter tests
```

## Local Setup

### 1. Clone the repository

```bash
git clone https://github.com/josuealfaro2400/Beach-Circle.git
cd Beach-Circle/beach_circle_flutter
```

### 2. Install Flutter dependencies

```bash
flutter pub get
```

### 3. Configure Mapbox

Create:

```text
lib/mapbox.dart
```

using:

```text
lib/mapbox.example.dart
```

as the template.

Example:

```dart
const String mapboxAccessToken = 'YOUR_MAPBOX_ACCESS_TOKEN';
```

Do not commit your personal access token.

### 4. Configure EmailJS

Create:

```text
lib/email_config.dart
```

using:

```text
lib/email_config.example.dart
```

as the template.

Fill in your own EmailJS configuration values.

### 5. Configure Firebase

Firebase configuration files are not included in this repository.

Depending on the platform, you will need to provide the appropriate Firebase configuration, such as:

```text
android/app/google-services.json
lib/firebase_options.dart
```

using your own Firebase project.

### 6. Configure the weather API

The OpenWeather API key is supplied at runtime instead of being stored directly in the source code.

Run the app with:

```bash
flutter run --dart-define=OPENWEATHER_API_KEY=YOUR_OPENWEATHER_API_KEY
```

## Security

API keys, service-account files, and local configuration files are intentionally excluded from version control.

Example configuration files are included where appropriate so developers can provide their own credentials locally.

## Team Project

Beach Circle was developed collaboratively by a five-person CSULB Computer Science team. This repository preserves the team's shared development history and contributions.

## Status

Beach Circle was developed as an academic project and is not currently deployed as a production application.