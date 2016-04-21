note
	description: "Summary description for {PROCESS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	PROCESS

feature {NONE}
	over: BOOLEAN
			-- Should execution terminate now?
		deferred
		end

feature {NONE} -- Basci operations
	setup
		do
		end

	step
		deferred
		end

	wrapup
		do
		end

feature {NONE}
	live
		do
			from
				setup
			until
				over
			loop
				step
			end
			wrapup
		end
end
