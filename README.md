# 🏋️ Fitness Tracker App

A modern, beautiful fitness tracking application built with Flutter. Track your workouts, monitor health metrics, and achieve your fitness goals with an elegant dark-themed UI.

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)

## 📱 Screenshots

<div align="center">
  <img src="screenshots_of_ui/homepage.png" width="300" alt="Homepage"/>
  <img src="screenshots_of_ui/tracker.png" width="300" alt="Health Overview"/>
</div>

## ✨ Features

### 🏠 Home Screen

-   **Quick Exercise Access** - Start full body exercise workouts with calorie and time information
-   **Activity Tracking** - Monitor running distance and cycling metrics
-   **Exercise Appointment** - Quick call button for exercise practice appointments
-   **Modern UI** - Clean, dark-themed interface with neon green accents

### 📊 Health Overview Screen

-   **Health Metrics Dashboard** - Track calories, protein, sleep, and weight
-   **Heart Rate Monitor** - R-R interval tracking with visual timeline
-   **Blood Pressure Chart** - Weekly blood pressure visualization using interactive bar charts
-   **Custom Navigation** - Smooth transitions between screens

### 🎨 UI Components

-   Custom hero cards with exercise information
-   Reusable detail cards for metrics display
-   Interactive charts using fl_chart package
-   Custom circular buttons with icons
-   Responsive layout for different screen sizes

## 🛠️ Tech Stack

-   **Framework**: Flutter 3.10.1+
-   **Language**: Dart
-   **UI**: Material Design with custom styling
-   **Charts**: fl_chart ^1.1.1
-   **State Management**: StatelessWidget (simple app structure)

## 📦 Dependencies

```yaml
dependencies:
    flutter:
        sdk: flutter
    cupertino_icons: ^1.0.8
    fl_chart: ^1.1.1
```

## 🚀 Getting Started

### Prerequisites

-   Flutter SDK (3.10.1 or higher)
-   Dart SDK
-   Android Studio / VS Code
-   Android Emulator / iOS Simulator / Physical Device

### Installation

1. **Clone the repository**

    ```bash
    git clone https://github.com/yourusername/fitness_tracker_app.git
    cd fitness_tracker_app
    ```

2. **Install dependencies**

    ```bash
    flutter pub get
    ```

3. **Run the app**
    ```bash
    flutter run
    ```

### Build for Production

**Android:**

```bash
flutter build apk --release
```

**iOS:**

```bash
flutter build ios --release
```

**Web:**

```bash
flutter build web
```

## 📁 Project Structure

```
lib/
├── main.dart                          # App entry point
├── views/
│   ├── HomePage/
│   │   └── homepage_screen.dart       # Home screen
│   └── FitnessTracker/
│       └── fitness_tracker.dart       # Health overview screen
├── widgets/
│   ├── custom_hero_card.dart          # Exercise card component
│   ├── custom_details_card.dart       # Metric detail cards
│   ├── custom_overview_card.dart      # Heart rate overview
│   ├── custom_overview_tile.dart      # Health metric tiles
│   ├── custom_blood_pressure_card.dart # Blood pressure chart
│   ├── custom_chart.dart              # Bar chart component
│   ├── custom_circle_button.dart      # Circular icon buttons
│   ├── custom_icon_text.dart          # Icon + text combo
│   └── custom_time_tracker.dart       # Time tracking widget
└── utils/
    ├── colors.dart                    # App color scheme
    └── text_style.dart                # Text styling utilities
```

## 🎨 Color Scheme

```dart
Primary Color:    #E7FE55 (Neon Green)
Secondary Color:  #1E1F1A (Dark Gray)
Background:       #000000 (Black)
```

## 🔑 Key Features Breakdown

### Navigation

-   Utilizes `Navigator.push()` for screen transitions
-   Back button functionality on detail screens

### Custom Widgets

-   **CustomHeroCard**: Main exercise promotion card with image overlay
-   **CustomDetailsCard**: Dual-color metric display cards
-   **CustomOverviewCard**: Heart rate monitoring with time intervals
-   **CustomBloodPressureCard**: Weekly chart visualization
-   **CustomChart**: Reusable bar chart with fl_chart integration

### Responsive Design

-   Uses `Expanded` widgets for flexible layouts
-   `SingleChildScrollView` for scrollable content
-   Proper spacing with `SizedBox` and padding

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

## 👨‍💻 Author

Your Name

-   GitHub: [@yourusername](https://github.com/yourusername)

## 🙏 Acknowledgments

-   Flutter team for the amazing framework
-   fl_chart package for beautiful chart visualizations
-   Material Design for UI guidelines

## 📞 Support

For support, email your-email@example.com or create an issue in this repository.

---

<div align="center">
  Made with ❤️ using Flutter
</div>
