note
	description: "Summary description for {SANTA}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SANTA

create
	make

feature
	make
		do

		end

feature {NONE}
	wake_up
		do

		end

feature {REINDEER}
	reindeer_knock_knock
		do
			no_reindeer:= no_reindeer + 1
		end

feature {ELF}
	elf_knock_knock
		do
			no_waiting_elves := no_waiting_elves + 1
			else if no_waiting_elves = 3 then
				help_elves

			end
		end

feature {NONE}
	prepare_sleigh
		require
			no_reindeer = max_reindeer
		do
			io.put_string ("Santa is preapering the sleigh...")
		end

	help_elves
		require
			no_waiting_elves = max_serving_elves
			no_reindeer < max_reindeer
		do
			io.put_string ("Santa is helping 3 elves...")
		end

feature
	is_busy: BOOLEAN

feature {NONE}
	no_reindeer: INTEGER
	no_waiting_elves: INTEGER
	max_serving_elves: INTEGER
	max_reindeer: INTEGER


invariant
	no_reindeer >= 0
	no_reindeer <= max_reindeer
	no_waiting_elves >= 0

end
