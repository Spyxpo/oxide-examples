# OGRE Material Form

A Material Design login form demonstrating form widgets, validation, and user interaction.

## Overview

This example demonstrates:
- TextField with labels, hints, and icons
- Password field with visibility toggle
- Form validation
- Checkbox widget
- Button variants (filled, outlined, text)
- Dialog and Snackbar feedback
- Row and Column layouts
- Social login buttons

## Running the Example

```bash
# Run directly
oxide main.ox

# Or as a full project
ogre create loginapp --app
cp main.ox loginapp/src/main.ox
cd loginapp
ogre run
```

## Key Concepts

### TextField
TextFields support various configurations:
```oxide
emailField = TextField()
emailField.label("Email")
emailField.hint("Enter your email")
emailField.prefixIcon("email")
emailField.keyboardType("email")
emailField.onChange(func(val) email = val endfunc)
```

### Password Field
For secure input:
```oxide
passwordField = TextField()
passwordField.label("Password")
passwordField.obscureText(True)  # Hides input
```

### Form Validation
Validate before submission:
```oxide
func validateForm()
    if username == ""
        showSnackbar("Please enter a username")
        return False
    endif
    return True
endfunc
```

### Dialogs and Snackbars
User feedback mechanisms:
```oxide
# Dialog for important messages
showDialog("Title", "Message content")

# Snackbar for brief notifications
showSnackbar("Quick message")
```

### Button Variants

**Filled Button** (primary actions):
```oxide
btn = Button("Sign In")
btn.backgroundColor("#6200EE")
btn.color("#FFFFFF")
```

**Outlined Button** (secondary actions):
```oxide
btn = OutlinedButton("Continue with Google")
btn.prefixIcon("google")
```

**Text Button** (tertiary actions):
```oxide
btn = TextButton("Forgot Password?")
btn.color("#6200EE")
```

### Checkbox
For boolean options:
```oxide
checkbox = Checkbox()
checkbox.checked(False)
checkbox.onChanged(func(checked) rememberMe = checked endfunc)
```

## Form Widgets Reference

| Widget | Purpose |
|--------|---------|
| TextField | Single-line text input |
| Checkbox | Boolean toggle |
| Switch | On/off toggle |
| Radio | Single selection from group |
| Slider | Numeric range selection |
| Dropdown | Selection from list |
