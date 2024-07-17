extends Node2D

@onready var label: Label = $Label
@onready var label_2: Label = $Label2


var _plugin_name = "AndroidLibraryPlugin"
var _android_plugin

func _ready():
	if Engine.has_singleton(_plugin_name):
		label.text = "Plugin has been found."
		_android_plugin = Engine.get_singleton(_plugin_name)

func _on_Button_pressed():
	if _android_plugin:
		_android_plugin.helloWorld()
