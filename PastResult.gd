extends Label

var skippedLines = 0

func _on_line_edit_text_submitted(new_text):
	if get_line_count() >= (self.max_lines_visible):
		skippedLines += 1
		self.set_lines_skipped(skippedLines)
	self.text += new_text + "\n"
