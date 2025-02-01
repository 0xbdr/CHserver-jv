extends Node2D






const apikey ="AIzaSyCunp_kaExhJPhdBaq8uGdDUvSrUHXfc40"
const API_URL = "https://api.openai.com/v1/chat/completions"



var firsttalk = [26, "Antigone est une tragédie écrite par Sophocle \n qui raconte l'histoire d'une jeune femme défiant l'autorité du\nroi Créon pour honorer son frère Polynice\nen lui offrant des funérailles selon les rites\nsacrés. À travers un enchaînement d'événements marquants, l'œuvre se divise en 5 arcs \nqui explorent des thèmes profonds . si vous n'avez pas de questions\nnous pouvons commencer par le premier arc : l'introduction ", preload("res://talks/wheretostartnggz.mp3")]
var introarc = [71, "L'histoire commence après une bataille entre deux frères \nPolynice et Étéocle. Ils se sont battus pour devenir roi de Thèbes et sont morts tous les deux. Créon, le nouveau roi, décide qu’Étéocle sera enterré avec honneur, mais que Polynice, qu’il considère comme un traître, restera sans sépulture.Antigone, leur sœur, est très en colère. Elle pense qu’il est injuste de laisser Polynice sans enterrement. Selon elle, les lois des dieux, qui disent qu’on doit enterrer les morts, sont plus importantes que les lois du roi. Elle décide de désobéir à Créon et d’enterrer son frère, même si elle risque sa vie.Sa sœur Ismène a peur. Elle lui dit de ne pas se mettre en danger, mais Antigone refuse d’écouter. Elle est prête à tout pour faire ce qu’elle pense être juste.Cet arc montre la détermination d’Antigone à suivre ses valeurs, même si cela cause des problèmes. Il met aussi en avant le début du conflit avec Créon et le choix difficile entre obéir ou se révolter.", preload("res://talks/introarc.mp3")]
var execarc = [69, "Arc de l'execution :\nAntigone a été arrêtée parce qu’elle a enterré son frère Polynice malgré l’interdiction du roi Créon. Créon est furieux qu’elle ait désobéi à ses ordres. Il veut montrer qu’il est le seul à décider des lois à Thèbes.Même face à la mort, Antigone ne regrette rien. Elle défend son acte en disant qu’elle a suivi les lois des dieux, qui sont plus importantes que celles des hommes. Créon, cependant, reste inflexible. Il décide qu’Antigone sera enfermée vivante dans une grotte pour mourir seule.Hémon, le fils de Créon et fiancé d’Antigone, essaie de raisonner son père. Il lui dit que le peuple trouve cette punition cruelle et qu’il devrait changer d’avis. Mais Créon refuse d’écouter, pensant qu’il perdrait son autorité en cédant.Cet arc montre la dureté de Créon, le courage d’Antigone et les tensions qui grandissent entre Créon et ses proches. La tragédie approche, et les choix de Créon commencent à avoir de lourdes conséquences.", preload("res://talks/execarc.mp3")]
var sacrificie = [88, "arc de la sacrifice :\nAntigone est enfermée dans une grotte, condamnée à mourir pour avoir désobéi à Créon. Mais cette punition provoque une rébellion autour d’elle. Le peuple commence à critiquer la cruauté de Créon. Même dans sa famille, des tensions éclatent. Hémon, le fils de Créon et fiancé d’Antigone, se dresse contre son père. Il essaie de le convaincre de libérer Antigone, mais Créon refuse de changer sa décision. Pendant ce temps, le devin Tirésias vient avertir Créon. Il lui dit que les dieux sont en colère à cause de son refus d’enterrer Polynice et de sa cruauté envers Antigone. Il prévient que ces actes entraîneront de terribles malheurs pour lui et sa famille.Finalement, Créon finit par céder et décide d’enterrer Polynice et de libérer Antigone. Mais il est trop tard. Antigone s’est déjà suicidée dans la grotte. Quand Hémon découvre son corps, il est dévasté et met fin à ses jours. Plus tard, la femme de Créon, Eurydice, apprend la mort de son fils et se suicide aussi.Cet arc montre les conséquences tragiques des choix de Créon. Il perd tout à cause de son entêtement, et le sacrifice d’Antigone provoque la chute de toute sa famille.", preload("res://talks/sacrificie.mp3")]
var tragedi = [73.66, "arc du  destin inévitable : La tragédie atteint son sommet après les décisions et les erreurs de Créon. Malgré les avertissements de Tirésias, Créon agit trop tard. Quand il ordonne d’enterrer Polynice et de libérer Antigone, le destin a déjà pris une tournure irréversible.Antigone, enfermée vivante dans la grotte, s’est pendue pour mettre fin à ses souffrances. Hémon, son fiancé, arrive pour la sauver, mais il découvre son corps sans vie. Fou de douleur et de colère contre son père, il se suicide avec son épée . Quand Eurydice, la femme de Créon, apprend la mort de son fils Hémon, elle ne supporte pas cette douleur. Elle se donne la mort à son tour, laissant Créon seul, accablé par le chagrin et la culpabilité.Cet arc montre la destruction totale causée par l’orgueil et l’entêtement. Créon, qui voulait défendre son pouvoir, perd sa famille et se retrouve isolé. La tragédie rappelle que défier les lois divines et refuser d’écouter les autres mène toujours à la catastrophe.", preload("res://talks/tragedy.mp3")]
var redmeption = [60, "arc de la redmeption : Après les tragédies successives, Créon se retrouve seul, écrasé par le poids de ses erreurs. Il comprend enfin que son orgueil et son entêtement ont causé la mort d’Antigone, d’Hémon et d’Eurydice. Cet arc montre la prise de conscience de Créon. Il réalise que les lois humaines ne doivent pas toujours passer avant les lois divines et les valeurs morales. Sa punition est de vivre avec la douleur et la solitude, ce qui est pire que la mort pour lui. Le message final est clair : reconnaître ses fautes trop tard ne répare pas les dommages causés. La rédemption de Créon n’efface pas les conséquences, mais elle montre l’importance d’écouter, de réfléchir et de respecter les lois divines. C’est une leçon de vie dure et inoubliable.", preload("res://talks/redmeption.mp3")]
var ai = [13.20, "Et maintenant, vous pouvez poser vos questions. Nous sommes prêts à répondre avec l'aide de notre ami, c'est un programme connecté avec un modèle d'intelligence artificielle qui peut répondre à vos questions", preload("res://talks/ai.mp3")]
var bye = [11.07, "Merci à tous pour votre écoute. Je tiens à exprimer ma profonde gratitude pour l'attention et le temps que vous m'avez accordés.  à bientôt !", preload("res://talks/9wd.mp3")]
var usingai = false
var end = false
func _ready():
	ah()
func ah():
	bottalk(firsttalk)
	yield(get_tree().create_timer(26),"timeout")
	bottalk(introarc)
	yield(get_tree().create_timer(71),"timeout")
	bottalk(execarc)
	yield(get_tree().create_timer(69),"timeout")
	bottalk(sacrificie)
	yield(get_tree().create_timer(88),"timeout")
	bottalk(tragedi)
	yield(get_tree().create_timer(73.66),"timeout")
	bottalk(redmeption)
	yield(get_tree().create_timer(60),"timeout")
	bottalk(ai)
	yield(get_tree().create_timer(13.2),"timeout")
	bottalk(bye)
	end = true
	
	pass
master func recervie(msg : String):
	understand(msg)

func understand(what):
	if !usingai :
		$phonestatues/message.visible = true
		$phonestatues/message/Node2D/Label.text = what
		yield(get_tree().create_timer(2),"timeout")
		$phonestatues/message.visible = false
		if what == "p":
			get_tree().reload_current_scene()
		elif what == "ft":
			bottalk(firsttalk)
		elif what =="introarc":
			bottalk(introarc)
		elif what =="exec":
			bottalk(execarc)
		elif what =="sacrifice":
			bottalk(sacrificie)
		elif what =="tragedy":
			bottalk(tragedi)
		elif what =="red":
			bottalk(redmeption)
		elif what =="gtfo":
			bottalk(redmeption)
			end = true
		if what == "ai":
			bottalk(ai)
			usingai = true
	else:
		if what == "back":
			usingai = false
		else :
			fetchai(what)
func bottalk(object : Array):
	$bot/talking.visible = true
	printtolabel(object[1])
	var bottalkstream = AudioStreamPlayer.new()
	$bot.add_child(bottalkstream)
	bottalkstream.stream = object[2]
	bottalkstream.play()
	print("started")
	yield(get_tree().create_timer(object[0]), "timeout")
	print("finished")
	bottalkstream.playing = false
	bottalkstream.stop()
	bottalkstream.stream = null
	bottalkstream.queue_free()
	$bot/talking.visible = false
	print("ended")
	if end:
		get_tree().change_scene("res://ahhend.tscn")

func printtolabel(text : String):
	$Node2D/Panel3/RichTextLabel.text = ""
	for i in text:
		yield(get_tree().create_timer(0.05), "timeout")
		$Node2D/Panel3/RichTextLabel.text += i


func fetchai(ms: String):
	var httprequest = $HTTPRequest
	var headers = [
		"Content-Type: application/json",
		"Authorization: Bearer AIzaSyCunp_kaExhJPhdBaq8uGdDUvSrUHXfc40"  # Replace with your actual Gemini API key
	]
	
	var data = {
		"model": "gemini-2.0-flash-exp",  # Using the provided model name
		"temperature": 1,
		"top_p": 0.95,
		"top_k": 40,
		"max_output_tokens": 8192,
		"response_mime_type": "text/plain",
		"messages": [
			{"role": "system", "content": "Answer this user briefly about their question."},
			{"role": "user", "content": ms}
		]
	}
	
	var json_data = JSON.print(data)  # Convert to valid JSON string
	
	# Ensure the HTTPRequest node is ready
	
	
	httprequest.request("https://api.gemini.com/v1/chat/completions", headers, true, HTTPClient.METHOD_POST, json_data)

func _on_HTTPRequest_request_completed(result: int, response_code: int, headers: Array, body: PoolByteArray):
	if response_code == 200:
		var response_text = body.get_string_from_utf8()
		var response_data = JSON.parse(response_text)
		
		if response_data.error == OK:
			var choices = response_data.result["choices"]
			if choices.size() > 0:
				var reply = choices[0]["message"]["content"]
				bottalk([8, reply, load("res://talks/aires.mp3")])  # Play the audio after the response
			else:
				print("No choices found in the response.")
				bottalk([8, 
("No choices found in the response.")
, load("res://talks/err.mp3")])
		else:
			print("Error parsing response: " + str(response_data.error_string))
			bottalk([8, 
("Error parsing response: " + str(response_data.error_string))
, load("res://talks/err.mp3")])
	else:
		print("Request failed with code: " + str(response_code) + ". Body: " + body.get_string_from_utf8())
		bottalk([8, 
"Request failed with code: " + str(response_code) + ". Body: " + body.get_string_from_utf8()
, load("res://talks/err.mp3")])
