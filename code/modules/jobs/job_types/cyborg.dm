/datum/job/cyborg
	title = "Cyborg"
	auto_deadmin_role_flags = DEADMIN_POSITION_SILICON
	faction = "Station"
	total_positions = 0
	spawn_positions = 1
	supervisors = "your laws and the AI"	//Nodrak
	selection_color = "#ddffdd"
	exp_type = EXP_TYPE_CREW
	wiki_page = "Cyborg" //WS Edit - Wikilinks/Warning
	special_notice = "Your laws take precedence over everything, including space law and past objectives. Do NOT break them." //WS Edit - Wikilinks/Warning

	display_order = JOB_DISPLAY_ORDER_CYBORG

/datum/job/cyborg/equip(mob/living/carbon/human/H, visualsOnly = FALSE, announce = TRUE, latejoin = FALSE, datum/outfit/outfit_override = null, client/preference_source = null)
	if(visualsOnly)
		CRASH("dynamic preview is unsupported")
	return H.Robotize(FALSE, latejoin)

/datum/job/cyborg/after_spawn(mob/living/silicon/robot/R, mob/M)
	R.updatename(M.client)
	R.gender = NEUTER

/datum/job/cyborg/radio_help_message(mob/M)
	to_chat(M, "<b>Prefix your message with :b to speak with other cyborgs and AI.</b>")
