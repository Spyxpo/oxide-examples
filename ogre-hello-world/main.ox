# OGRE Hello World
# Your first cross-platform GUI app with OGRE

use ogre

# Create the main scaffold (root widget)
scaffold = Scaffold()

# App bar with title and styling
appBar = AppBar()
appBar.title("My First OGRE App")
appBar.backgroundColor("#6200EE")

# Create centered body content
body = Center()

# Main content column
column = Column()
column.spacing(16)
column.alignment("center")

# Welcome text
welcomeText = Text("Hello, OGRE!")
welcomeText.fontSize(32)
welcomeText.bold()
welcomeText.color("#6200EE")

# Subtitle
subtitle = Text("Build beautiful cross-platform apps")
subtitle.fontSize(16)
subtitle.color("#757575")

# Add widgets to column
column.add(welcomeText)
column.add(subtitle)
body.add(column)

# Assemble the scaffold
scaffold.appBar(appBar)
scaffold.body(body)

# Run the application
RunApp(scaffold)
