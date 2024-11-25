extends Control  # Ensure this is the appropriate base node for your scene

# Declare member variables for the buttons and the label
var button_a : Button
var button_b : Button
var button_c : Button
var button_d : Button
var clear_button : Button
var label : Label

var current_input : String = ""  # Holds the current input

# Called when the node enters the scene tree for the first time.
func _ready():
	# Get references to the Button and Label nodes (adjust names as needed)
	button_a = $ButtonA  # Ensure the button is named "ButtonA"
	button_b = $ButtonB  # Ensure the button is named "ButtonB"
	button_c = $ButtonC  # Ensure the button is named "ButtonC"
	button_d = $ButtonD  # Ensure the button is named "ButtonD"
	clear_button = $ClearButton  # Ensure the clear button is named "ClearButton"
	label = $Label  # Ensure the label is named "Label"
	
	# Connect each letter button to the appropriate handler
	button_a.pressed.connect(self._on_ButtonA_pressed)
	button_b.pressed.connect(self._on_ButtonB_pressed)
	button_c.pressed.connect(self._on_ButtonC_pressed)
	button_d.pressed.connect(self._on_ButtonD_pressed)
	
	# Connect the clear button to the clear function
	clear_button.pressed.connect(self._on_ClearButton_pressed)

# Function to add "A" to the label when button A is pressed
func _on_ButtonA_pressed():
	current_input += "A "  # Append "A" and a space
	label.text = current_input  # Update label with current input

# Function to add "B" to the label when button B is pressed
func _on_ButtonB_pressed():
	current_input += "B "  # Append "B" and a space
	label.text = current_input  # Update label with current input

# Function to add "C" to the label when button C is pressed
func _on_ButtonC_pressed():
	current_input += "C "  # Append "C" and a space
	label.text = current_input  # Update label with current input

# Function to add "D" to the label when button D is pressed
func _on_ButtonD_pressed():
	current_input += "D "  # Append "D" and a space
	label.text = current_input  # Update label with current input

# Function to clear the label when the clear button is pressed
func _on_ClearButton_pressed():
	current_input = ""  # Clear the current input
	label.text = current_input  # Clear the label
