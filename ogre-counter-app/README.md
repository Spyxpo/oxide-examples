# OGRE Counter App

A Flutter-style counter application demonstrating state management with OGRE.

## Overview

This example demonstrates:
- State management with variables
- Event callbacks (onTap)
- UI updates with `refresh()`
- Floating Action Button (FAB)
- Card widget with elevation
- Row and Column layouts
- IconButton in AppBar
- Circular button styling

## Running the Example

```bash
# Run directly
oxide main.ox

# Or create a full project
ogre create counter --app
cp main.ox counter/src/main.ox
cd counter

# Run on different platforms
ogre run                # Desktop
ogre run ios            # iOS Simulator
ogre run android        # Android Emulator
```

## Key Concepts

### State Management
OGRE uses a simple state model:
1. Define state variables at module level
2. Modify state in callback functions
3. Call `refresh()` to update the UI

```oxide
counter = 0  # State variable

func onIncrement()
    counter = counter + 1       # Update state
    counterText.setText(str(counter))  # Update widget
    refresh()                   # Trigger UI refresh
endfunc
```

### Event Callbacks
Widgets support various event callbacks:
- `onTap()` - Touch/click event
- `onLongPress()` - Long press event
- `onChange()` - Value change (for inputs)

### Floating Action Button
The FAB is a primary action button:
```oxide
fab = FloatingActionButton()
fab.icon("+")
fab.backgroundColor("#03DAC6")
fab.onTap(onIncrement)
scaffold.floatingActionButton(fab)
```

### Card Widget
Cards provide elevation and grouping:
```oxide
card = Card()
card.width(300)
card.padding(32)
card.elevation(4)
card.borderRadius(16)
```

## Material Design Colors

The example uses Material Design 3 colors:
- Primary: `#6200EE`
- Secondary: `#03DAC6`
- Background: `#FAFAFA`
- Surface: `#FFFFFF`
- Text Primary: `#212121`
- Text Secondary: `#757575`
