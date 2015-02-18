
var/list/dreams = list(
	"the Sulaco","a wound","a familiar face","a squadmate","a flare","an officer","the commander",
	"whispering","deep space","a medic","the engine","a traitor","an ally","darkness",
	"dim light","a scientist","the squad leader","a catastrophe","a loved one","a mistake","ice","freezing","warning lights",
	"a helmet","Earth","a ruined station","a colony","bunny slippers","air","the morgue","the Sulaco bridge","blinking lights",
	"a blue light","an abandoned colony","Colonial Marines","Weyland Yutani","blood","medicine","power","a corpse",
	"loyalty","space","a crash","duty","suffocation","a fall","heat","flames","ice","cigarettes","falling","warning light","a PDA",
	"Alpha Squad","Bravo Squad","Charlie Squad","Delta Squad","a Pulse Rifle",
	"a combat knife","a distress beacon","a Pulse Rifle","a spider","empty space","claws",
	"acid","pajamas","briefing","welding helmets","the vents","trapped","a lone survivor",
	"a power loader","cyrostasis","the logistics officers","the engineer","a severed head","a motion scanner","the dropship","a uniform",
	"a ruined station","fire","a smokey room","a voice","the cold","darkness","an operating table","teeth","Joushuu","game over",
	"a synthetic","a mission","caught","the U.P.P","Weyland Yutani","alone",
	)

mob/living/carbon/proc/dream()
	dreaming = 1

	spawn(0)
		for(var/i = rand(1,4),i > 0, i--)
			src << "\blue <i>... [pick(dreams)] ...</i>"
			sleep(rand(40,70))
			if(paralysis <= 0)
				dreaming = 0
				return 0
		dreaming = 0
		return 1

mob/living/carbon/proc/handle_dreams()
	if(client && !dreaming && prob(5))
		dream()

mob/living/carbon/var/dreaming = 0
