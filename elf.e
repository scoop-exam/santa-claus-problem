note
	description: "Summary description for {ELF}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	ELF

inherit
	PROCESS

feature {NONE}
	go_to_santa (s: separate SANTA)
		require
			not s.is_busy
		do
			
		end


feature
	getHelp
		do

		end

feature
	santa: separate SANTA

end
