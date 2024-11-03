extends Node

var codes = []
var userCode : String
var codeArr = []
var codeStr = ""

var lightStates : Array = [0,0,0,0]

signal lightsUpdate(lightStates: Array)

func _ready():
	codes = createCode()
	print(codes[1])

func createCode():
	for i in range(0,4):
		var newDigit = randi_range(0,9)
		codeArr.append(str(newDigit))
		codeStr += str(newDigit)
	return [codeArr, codeStr]

func codeChecker(userCode,codeArr):
	var userCodeArr = userCode.split(" ")
	for x in range(0,len(codeArr)):
		if codeArr[x] == userCodeArr[x]:
			lightStates[x] = 2
		elif userCodeArr[x] in codeArr:
			lightStates[x] = 1
		else:
			lightStates[x] = 0

func _on_line_edit_text_submitted(new_text: String) -> void:
	userCode = new_text.replace(" ","")
	if userCode == codes[1]:
		print("win :D")
	codeChecker(new_text,codeArr)
	lightsUpdate.emit(lightStates)
