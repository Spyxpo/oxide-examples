# OGRE Material Form
# A login form demonstrating form widgets and validation

use ogre

# Form state
username = ""
email = ""
password = ""
rememberMe = False
showPassword = False

# Form validation
func validateForm()
    if username == ""
        showSnackbar("Please enter a username")
        return False
    endif

    if email == ""
        showSnackbar("Please enter an email address")
        return False
    endif

    if not contains(email, "@")
        showSnackbar("Please enter a valid email address")
        return False
    endif

    if len(password) < 8
        showSnackbar("Password must be at least 8 characters")
        return False
    endif

    return True
endfunc

# Submit handler
func onSubmit()
    if validateForm()
        showDialog("Welcome!", "Hello, " + username + "!\n\nYou've successfully signed in.")
    endif
endfunc

# Toggle password visibility
func togglePassword()
    showPassword = not showPassword
    passwordField.obscureText(not showPassword)
    refresh()
endfunc

# Toggle remember me
func onRememberMeChanged(checked)
    rememberMe = checked
endfunc

# Create scaffold
scaffold = Scaffold()

# App bar
appBar = AppBar()
appBar.title("Sign In")
appBar.backgroundColor("#6200EE")

# Body
body = Center()

# Main card
card = Card()
card.width(400)
card.padding(32)
card.elevation(8)
card.borderRadius(16)

# Form column
formColumn = Column()
formColumn.spacing(20)

# Logo/Header
headerText = Text("Welcome Back")
headerText.fontSize(28)
headerText.bold()
headerText.color("#212121")

subtitleText = Text("Sign in to continue")
subtitleText.fontSize(14)
subtitleText.color("#757575")

# Username field
usernameField = TextField()
usernameField.label("Username")
usernameField.hint("Enter your username")
usernameField.prefixIcon("person")
usernameField.onChange(func(val) username = val endfunc)

# Email field
emailField = TextField()
emailField.label("Email")
emailField.hint("Enter your email")
emailField.prefixIcon("email")
emailField.keyboardType("email")
emailField.onChange(func(val) email = val endfunc)

# Password field with visibility toggle
passwordRow = Row()
passwordRow.alignment("center")

passwordField = TextField()
passwordField.label("Password")
passwordField.hint("Enter your password")
passwordField.prefixIcon("lock")
passwordField.obscureText(True)
passwordField.onChange(func(val) password = val endfunc)

toggleBtn = IconButton("visibility")
toggleBtn.color("#757575")
toggleBtn.onTap(togglePassword)

passwordRow.add(passwordField)
passwordRow.add(toggleBtn)

# Remember me checkbox
rememberRow = Row()
rememberRow.alignment("center")
rememberRow.spacing(8)

checkbox = Checkbox()
checkbox.checked(False)
checkbox.onChanged(onRememberMeChanged)

rememberLabel = Text("Remember me")
rememberLabel.fontSize(14)
rememberLabel.color("#757575")

rememberRow.add(checkbox)
rememberRow.add(rememberLabel)

# Sign in button
signInBtn = Button("Sign In")
signInBtn.backgroundColor("#6200EE")
signInBtn.color("#FFFFFF")
signInBtn.width(336)
signInBtn.height(48)
signInBtn.borderRadius(24)
signInBtn.onTap(onSubmit)

# Footer links row
footerRow = Row()
footerRow.alignment("center")
footerRow.spacing(16)

forgotLink = TextButton("Forgot Password?")
forgotLink.color("#6200EE")
forgotLink.onTap(func() showDialog("Reset Password", "A password reset link has been sent to your email.") endfunc)

createLink = TextButton("Create Account")
createLink.color("#6200EE")
createLink.onTap(func() showSnackbar("Navigate to sign up page") endfunc)

footerRow.add(forgotLink)
footerRow.add(createLink)

# Divider with "or"
dividerRow = Row()
dividerRow.alignment("center")
dividerRow.spacing(16)

leftDivider = Divider()
leftDivider.width(100)

orText = Text("or")
orText.fontSize(14)
orText.color("#757575")

rightDivider = Divider()
rightDivider.width(100)

dividerRow.add(leftDivider)
dividerRow.add(orText)
dividerRow.add(rightDivider)

# Social login buttons
socialRow = Row()
socialRow.alignment("center")
socialRow.spacing(16)

googleBtn = OutlinedButton("Continue with Google")
googleBtn.prefixIcon("google")
googleBtn.width(160)
googleBtn.onTap(func() showSnackbar("Google Sign In") endfunc)

appleBtn = OutlinedButton("Continue with Apple")
appleBtn.prefixIcon("apple")
appleBtn.width(160)
appleBtn.onTap(func() showSnackbar("Apple Sign In") endfunc)

socialRow.add(googleBtn)
socialRow.add(appleBtn)

# Assemble form
formColumn.add(headerText)
formColumn.add(subtitleText)
formColumn.add(Spacer(16))
formColumn.add(usernameField)
formColumn.add(emailField)
formColumn.add(passwordRow)
formColumn.add(rememberRow)
formColumn.add(Spacer(8))
formColumn.add(signInBtn)
formColumn.add(footerRow)
formColumn.add(dividerRow)
formColumn.add(socialRow)

card.add(formColumn)
body.add(card)

scaffold.appBar(appBar)
scaffold.body(body)

RunApp(scaffold)
