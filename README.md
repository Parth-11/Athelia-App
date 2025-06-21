# Athelia

A comprehensive Flutter application for hobby tracking, community engagement, and personal wellness management.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Architecture](#architecture)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Dependencies](#dependencies)
- [Development](#development)
- [Building](#building)
- [Contributing](#contributing)
- [License](#license)

## Overview

Athelia is a modern Flutter application designed to help users track their hobbies, connect with like-minded communities, and maintain personal wellness through organized activity management. The app provides a comprehensive platform for hobby enthusiasts to document their journey, discover new interests, and engage with others who share similar passions.

## Features

### 🏠 Home Dashboard
- Personalized welcome interface with daily mood tracking
- Hobby shelf for quick access to active interests
- Memory lane for capturing and reviewing personal moments
- Today's entry feature for daily reflection

### 🎯 Hobby Hub
- Comprehensive hobby management system
- Categorized tracking (To Do, Doing, Completed)
- Support for multiple hobby types:
  - Books (reading lists and progress)
  - Movies and Series (watchlists and reviews)
  - Games (gaming backlog and achievements)
  - Documentaries (educational content tracking)
- Custom hobby creation with flexible categorization

### 👥 Community Lounge
- Themed hobby rooms for focused discussions
- Real-time messaging and interaction
- Featured content highlighting
- Daily prompts for community engagement
- Like and interaction system

### 👤 Profile Management
- Comprehensive user profile with customizable fields
- Statistics and analytics dashboard
- Posts and content management
- Network and connections overview
- Secure settings and privacy controls

## Architecture

Athelia follows a clean, modular architecture pattern:

```
lib/
├── models/           # Data models and entities
├── screens/          # UI screens and pages
├── widgets/          # Reusable UI components
└── main.dart        # Application entry point
```

### Design Patterns
- **Widget-based Architecture**: Leveraging Flutter's widget system for modular UI components
- **Separation of Concerns**: Clear distinction between UI, business logic, and data layers
- **Reusable Components**: Modular widgets for consistent UI across the application

## Getting Started

### Prerequisites

- Flutter SDK (>=3.7.2)
- Dart SDK (>=3.7.2)
- Android Studio / VS Code with Flutter extensions
- iOS development tools (for iOS deployment)

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd athelia
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

### Platform Support

- ✅ Android (API 21+)
- ✅ iOS (12.0+)
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## Project Structure

```
athelia/
├── android/                 # Android-specific configuration
├── ios/                     # iOS-specific configuration
├── lib/
│   ├── models/
│   │   ├── hobby.dart       # Hobby data model
│   │   ├── posts.dart       # Posts data model
│   │   ├── room.dart        # Community room model
│   │   └── user.dart        # User profile model
│   ├── screens/
│   │   ├── community/       # Community-related screens
│   │   │   ├── community_page.dart
│   │   │   └── room_page.dart
│   │   ├── home/            # Home dashboard screens
│   │   │   └── home_page.dart
│   │   ├── hub/             # Hobby hub screens
│   │   │   ├── hub_page.dart
│   │   │   └── hobby_page.dart
│   │   ├── profile/         # Profile management screens
│   │   │   ├── profile_page.dart
│   │   │   ├── edit_profile.dart
│   │   │   ├── settings.dart
│   │   │   ├── stats.dart
│   │   │   ├── clubs.dart
│   │   │   └── posts.dart
│   │   └── nav_bar.dart     # Main navigation
│   ├── widgets/
│   │   ├── community/       # Community-specific widgets
│   │   ├── home/            # Home dashboard widgets
│   │   ├── hub/             # Hobby hub widgets
│   │   └── profile/         # Profile-related widgets
│   └── main.dart            # Application entry point
├── test/                    # Unit and widget tests
├── assets/
│   └── fonts/               # Custom fonts
├── pubspec.yaml             # Project dependencies
└── README.md               # Project documentation
```

## Dependencies

### Core Dependencies
- **flutter**: Flutter SDK
- **cupertino_icons**: iOS-style icons

### UI & Visualization
- **syncfusion_flutter_charts**: Advanced charting capabilities
- **fast_charts**: Lightweight chart components

### Form & Input
- **intl_phone_field**: International phone number input

### Development Dependencies
- **flutter_test**: Testing framework
- **flutter_lints**: Code quality and style enforcement

## Development

### Code Style
The project follows Flutter's official style guide and uses `flutter_lints` for code quality enforcement.

### Testing
Run tests using:
```bash
flutter test
```

### Hot Reload
During development, use hot reload for faster iteration:
```bash
flutter run
# Press 'r' for hot reload
# Press 'R' for hot restart
```

## Building

### Debug Build
```bash
flutter build apk --debug          # Android Debug
flutter build ios --debug          # iOS Debug
```

### Release Build
```bash
flutter build apk --release        # Android Release
flutter build ios --release        # iOS Release
flutter build web --release        # Web Release
```

### Platform-Specific Builds
```bash
# Android
flutter build appbundle            # Google Play Store

# iOS
flutter build ipa                  # App Store

# Desktop
flutter build windows              # Windows
flutter build macos                # macOS
flutter build linux                # Linux
```

## Features in Detail

### Home Dashboard
The home screen provides a personalized experience with:
- Daily mood tracking and reflection
- Quick access to active hobbies
- Memory lane for personal moments
- Customizable welcome messages

### Hobby Management
Comprehensive hobby tracking system supporting:
- Multiple categories per hobby
- Progress tracking (To Do, Doing, Completed)
- Custom hobby creation
- Rich metadata support

### Community Features
Engaging community platform with:
- Themed discussion rooms
- Real-time messaging
- Content interaction (likes, comments)
- Daily engagement prompts

### Profile & Analytics
Detailed user management including:
- Customizable profile fields
- Statistical analysis and charts
- Content management
- Privacy and security settings

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Development Guidelines
- Follow Flutter's style guide
- Write tests for new features
- Update documentation as needed
- Ensure cross-platform compatibility

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

For support, please open an issue in the GitHub repository or contact the development team.

---

**Built with ❤️ using Flutter**