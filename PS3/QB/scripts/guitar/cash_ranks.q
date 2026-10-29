cash_rank_thresholds = [
	500
	2000
	4500
	8000
	12500
	14000
	18000
	20000
	22000
	26000
	30000
	33000
	37000
	45000
	51000
	60000
	67000
	80000
	90000
	106000
	124000
	140000
	161000
	185000
	210000
	250000
	287000
	334000
	417000
	500000
]
cash_rank_blurbs = [
	qs("Put an ad in the newspaper")
	qs("Made a demo")
	qs("Had a song on a metal compilation")
	qs("Opened for NWOBH legends")
	qs("Toured the country in a van")
	qs("Made first album")
	qs("Signed to a major label")
	qs("Formed punk side project just for fun")
	qs("Partied like a rockstar")
	qs("Became notorious for your partying")
	qs("First European Tour")
	qs("Returned to play hometown show to 60,000 people")
	qs("Bought film rights to make music video")
	qs("Snubbed for first major music award")
	qs("Won first major music award")
	qs("Broke wrist skateboarding... and kept touring")
	qs("Opened for the Godfather of Metal")
	qs("'Metal Up Your...' became a gold record")
	qs("Suffered pyro accident... and kept touring")
	qs("Released album of all cover songs")
	qs("Released album with all navy blue cover")
	qs("Got caught up in file sharing debacle")
	qs("Played concert with symphony orchestra")
	qs("Collected rare muscle cars")
	qs("Sold a Basquiat for a record price")
	qs("Got your own action figures")
	qs("Won the 'Most Metal Performance in a Metal video' award")
	qs("Rocked 500,000 screaming Russians")
	qs("Went bear hunting in Siberia")
	qs("Hired performance coach")
	qs("Made a docuentary film")
	qs("Had fifth album in a row debut at #1")
]

script cash_ranks_get_rank \{player = 1}
	GetPlayerInfo <player> controller
	get_savegame_from_controller controller = <controller>
	get_current_band_info
	GetGlobalTags <band_info> savegame = <savegame> param = career_earnings
	cash_get_info_from_earnings earnings = <career_earnings>
	return rank = <rank> cash_to_next_rank = <cash_to_next_rank> turnovers = <passes> career_earnings = <career_earnings>
endscript

script cash_ranks_get_patch_id \{player = 1}
	cash_ranks_get_rank player = <player>
	if (<rank> > 30)
		rank = 30
	endif
	if (<rank> < 10)
		FormatText checksumname = patch_id 'cash_milestones_patch_00%d' d = <rank>
	else
		FormatText checksumname = patch_id 'cash_milestones_patch_0%d' d = <rank>
	endif
	printf channel = mychannel qs("\LCalled get_patch_id player = %d") d = <player>
	return cash_patch_id = <patch_id>
endscript

script cash_ranks_get_icon_id \{player = 1}
	cash_ranks_get_rank player = <player>
	if (<rank> > 30)
		rank = 30
	endif
	if (<rank> < 10)
		FormatText checksumname = icon_id 'cash_milestone_icon_00%d' d = <rank>
	else
		FormatText checksumname = icon_id 'cash_milestone_icon_0%d' d = <rank>
	endif
	printf channel = mychannel qs("\LCalled get_icon_id player = %d") d = <player>
	return cash_icon_id = <icon_id>
endscript

script cash_get_info_from_earnings \{earnings = 0}
	passes = 0
	i = 0
	rank = 1
	begin
	Mod a = <i> b = 30
	index = <Mod>
	if (<index> = 0)
		if NOT (<rank> = 1)
			passes = (<passes> + 1)
		endif
	endif
	t1 = ($cash_rank_thresholds [<index>])
	t2 = (<passes> * ($cash_rank_thresholds) [29])
	thresh = (<t1> + <t2>)
	if (<earnings> >= <thresh>)
		rank = (<rank> + 1)
	else
		next_rank = <thresh>
		break
	endif
	i = (<i> + 1)
	repeat 150
	if (<rank> >= 151)
		next_rank = (5 * ($cash_rank_thresholds) [29])
		passes = 5
	endif
	icon_rank = <rank>
	if (<icon_rank> > 30)
		icon_rank = 30
	endif
	if (<rank> < 10)
		FormatText checksumname = icon_id 'cash_milestone_icon_00%d' d = <icon_rank>
	else
		FormatText checksumname = icon_id 'cash_milestone_icon_0%d' d = <icon_rank>
	endif
	printstruct channel = mychannel <...>
	return rank = <rank> cash_to_next_rank = <next_rank> turnovers = <passes> cash_icon_id = <icon_id>
endscript
