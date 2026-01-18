# OGRE Hello World

Your first cross-platform GUI application using OGRE (Oxide Graphics Rendering Engine).

## Overview

This example demonstrates:
- Creating a basic OGRE application scaffold
- Using AppBar for navigation
- Centering content with the Center widget
- Using Column for vertical layouts
- Text styling and theming

## Running the Example

```bash
# Run directly
oxide main.ox

# Or create an app project and run on different platforms
ogre create myapp --app
cp main.ox myapp/src/main.ox
cd myapp
ogre run                # Desktop
ogre run ios            # iOS Simulator
ogre run android        # Android Emulator
ogre run web            # Web browser
```

## Key Concepts

### Scaffold
The `Scaffold` is the root widget that provides basic Material Design layout structure:
- App bar at the top
- Body content
- Optional floating action button
- Optional drawer (navigation menu)

### AppBar
Material Design app bar with:
- Title text
- Background color
- Leading/trailing actions (icons)

### Center
A layout widget that centers its child both horizontally and vertically.

### Column
A layout widget that arranges children vertically with optional spacing.

### Text
A widget for displaying styled text with:
- Font size
- Color
- Bold/italic styling
- Text alignment

## Supported Platforms

| Platform | Run Command |
|----------|-------------|
| Desktop | `ogre run` |
| iOS | `ogre run ios` |
| Android | `ogre run android` |
| Web | `ogre run web` |
| macOS | `ogre run macos` |
| Windows | `ogre run windows` |
| Linux | `ogre run linux` |
