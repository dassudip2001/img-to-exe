# Image to EXE Converter

A Flutter application that converts images into standalone Windows executable (.exe) files. This app displays your image in a fullscreen window with no title bar, creating a simple image viewer executable.

## Features

- 🖼️ Display images in fullscreen mode
- 🪟 Borderless window (no title bar)
- 💻 Generate Windows executable (.exe) files
- 🎨 Simple and lightweight

## Prerequisites

Before you begin, ensure you have the following installed:

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (version 3.9.0 or higher)
- [Git](https://git-scm.com/downloads)
- Windows 10/11 (for building Windows executables)
- Visual Studio 2019 or later with:
  - Desktop development with C++
  - Windows 10/11 SDK

## Installation

1. **Clone or download this repository**
   ```bash
   git clone <repository-url>
   cd my_app
   ```

2. **Install Flutter dependencies**
   ```bash
   flutter pub get
   ```

## How to Use

### Step 1: Add Your Image

1. Place your image file in the `assets/images/` directory
2. Name it `image.jpg` (or update the code to use your filename)
3. Supported formats: JPG, PNG, GIF, etc.

**Note:** If you want to use a different image name:
- Update `pubspec.yaml` to include your image path:
  ```yaml
  assets:
     - assets/images/your-image.jpg
  ```
- Update `lib/main.dart` line 35 to reference your image:
  ```dart
  image: AssetImage('assets/images/your-image.jpg'),
  ```

### Step 2: Build the Executable

To create a Windows executable file, run:

```bash
flutter build windows
```

The executable will be generated at:
```
build\windows\x64\runner\Release\my_app.exe
```

### Step 3: Run Your Executable

1. Navigate to `build\windows\x64\runner\Release\`
2. Double-click `my_app.exe` to run
3. Your image will display in fullscreen mode

## Project Structure

```
my_app/
├── lib/
│   ├── main.dart              # Main application entry point
│   └── screens/
│       └── welcome.dart       # Welcome screen (alternative)
├── assets/
│   └── images/
│       └── image.jpg          # Your image file
├── windows/                   # Windows platform-specific code
├── pubspec.yaml              # Flutter dependencies and assets
└── README.md                 # This file
```

## Customization

### Change Window Behavior

Edit `lib/main.dart` to modify window settings:

```dart
WindowOptions windowOptions = const WindowOptions(
  fullScreen: true,           // Set to false for windowed mode
  center: true,               // Center window on screen
  titleBarStyle: TitleBarStyle.hidden,  // Show/hide title bar
  backgroundColor: Colors.black,        // Background color
);
```

### Change Image Display

Modify the `Image` widget in `lib/main.dart`:

```dart
Image(
  image: AssetImage('assets/images/image.jpg'),
  fit: BoxFit.cover,  // Options: cover, contain, fill, etc.
)
```

## Building for Other Platforms

### Android
```bash
flutter build apk
```

### iOS (macOS only)
```bash
flutter build ios
```

### Linux
```bash
flutter build linux
```

### macOS
```bash
flutter build macos
```

## Troubleshooting

### Build Errors

1. **Missing dependencies**: Run `flutter pub get`
2. **Flutter not found**: Ensure Flutter is in your PATH
3. **Windows SDK not found**: Install Visual Studio with Windows SDK

### Image Not Displaying

1. Check that your image is in `assets/images/`
2. Verify the image path in `pubspec.yaml`
3. Ensure the image path in `main.dart` matches your filename
4. Run `flutter clean` and rebuild

### Executable Too Large

The Flutter executable includes the Flutter engine, which makes it larger than a simple image viewer. This is normal for Flutter applications.

## Dependencies

- `flutter`: Flutter SDK
- `window_manager: ^0.5.1`: Window management for desktop platforms

## License

This project is open source and available for personal use.

## Contributing

Feel free to submit issues, fork the repository, and create pull requests for any improvements.

## Support

For Flutter-related questions, visit the [Flutter documentation](https://docs.flutter.dev/).

---

**Note:** This application embeds your image into the executable during the build process. The image becomes part of the compiled application and cannot be changed without rebuilding.
