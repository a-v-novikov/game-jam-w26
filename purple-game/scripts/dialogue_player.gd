extends CanvasLayer

@export var scene_text_file: String = ""

@onready var background = $Background
@onready var text_label = $TextLabel

var scene_text = {}
var selected_text = []
var in_progress = false
