note
	description: "Summary description for {SANTA_CLAUS_PROC}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SANTA_CLAUS_PROC

create
	make

feature -- Initialization

	make
		local
			i: INTEGER
			an_elf: separate ELF
			a_reindeer: separate REINDEER
		do

		end

feature

	number_of_reindeers: INTEGER = 9 -- Is fixed

	number_of_elves: INTEGER = 50 -- Could be anything


end
