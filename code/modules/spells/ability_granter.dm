/obj/item/ability_granter
	name = "inert ancient artifact"
	desc = "A strange item from a past era. Its magic seems to have waned long before you found it."
	icon = 'icons/obj/library.dmi'
	icon_state = "book"
	throw_speed = 1
	throw_range = 5
	w_class = ITEM_SIZE_SMALL
	var/ability = /spell/targeted/projectile/dumbfire/fireball

/obj/item/ability_granter/attack_self(mob/user)
//	if(!user.mind)
//		return
	to_chat(user, "Test")
	var/spell/S = (ability in spells)
	user.add_spell(S)
	var/ability_name = S
	to_chat(user, "<span class='notice'>You gained the [ability_name] ability!</span>")