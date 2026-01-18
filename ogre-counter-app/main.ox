# OGRE Counter App
# A Flutter-style counter demonstrating state management

use ogre

# Application state
counter = 0

# Increment counter callback
func onIncrement()
    counter = counter + 1
    counterText.setText(str(counter))
    refresh()
endfunc

# Decrement counter callback
func onDecrement()
    if counter > 0
        counter = counter - 1
        counterText.setText(str(counter))
        refresh()
    endif
endfunc

# Reset counter callback
func onReset()
    counter = 0
    counterText.setText("0")
    refresh()
endfunc

# Create the scaffold
scaffold = Scaffold()

# App bar with actions
appBar = AppBar()
appBar.title("Counter App")
appBar.backgroundColor("#6200EE")

# Reset action in app bar
resetBtn = IconButton("refresh")
resetBtn.color("#FFFFFF")
resetBtn.onTap(onReset)
appBar.addAction(resetBtn)

# Body with centered content
body = Center()

# Main content card
card = Card()
card.width(300)
card.padding(32)
card.elevation(4)
card.borderRadius(16)

# Content column
column = Column()
column.spacing(24)
column.alignment("center")

# Counter label
label = Text("You have pushed the button this many times:")
label.fontSize(14)
label.color("#757575")
label.textAlign("center")

# Counter display
counterText = Text("0")
counterText.fontSize(96)
counterText.bold()
counterText.color("#6200EE")

# Button row
buttonRow = Row()
buttonRow.spacing(16)
buttonRow.alignment("center")

# Decrement button
decrementBtn = Button("-")
decrementBtn.backgroundColor("#E0E0E0")
decrementBtn.color("#212121")
decrementBtn.width(60)
decrementBtn.height(60)
decrementBtn.borderRadius(30)
decrementBtn.onTap(onDecrement)

# Increment button
incrementBtn = Button("+")
incrementBtn.backgroundColor("#6200EE")
incrementBtn.color("#FFFFFF")
incrementBtn.width(60)
incrementBtn.height(60)
incrementBtn.borderRadius(30)
incrementBtn.onTap(onIncrement)

buttonRow.add(decrementBtn)
buttonRow.add(incrementBtn)

# Assemble column
column.add(label)
column.add(counterText)
column.add(buttonRow)
card.add(column)
body.add(card)

# Floating action button (main increment)
fab = FloatingActionButton()
fab.icon("+")
fab.backgroundColor("#03DAC6")
fab.onTap(onIncrement)

# Assemble scaffold
scaffold.appBar(appBar)
scaffold.body(body)
scaffold.floatingActionButton(fab)

# Run the application
RunApp(scaffold)
