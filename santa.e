class
    SANTA

create
    make

feature
    make
        do
            is_xmas := false
            is_busy := false
            is_ready := false
            no_hitched_reindeers := 0
            no_reindeers := 0
            no_elves := 0
            max_reindeers := 9
            max_elves := 3
        end

feature {REINDEER}
    no_reindeers: INTEGER
    max_reindeers: INTEGER
    no_hitched_reindeers: INTEGER

    reindeer_knock_knock
        do
            no_reindeers := no_reindeers + 1
            if no_reindeers = max_reindeers then
                prepare_sleigh
            end
        end

    hitch_reindeer
        require
            no_hitched_reindeers < max_reindeers
        do
            no_hitched_reindeers := no_hitched_reindeers + 1
            io.put_string ("SANTA: Reindeer hitched!%N")
            if no_hitched_reindeers = max_reindeers then
                go
            end
        end

feature {ELF}
    no_elves: INTEGER
    max_elves: INTEGER

    elf_knock_knock
        require
            no_elves < max_elves
        do
            io.put_string ("SANTA: Oh oh oh, a fuckin' elf is at the door!%N")
            no_elves := no_elves + 1
            if no_reindeers = max_reindeers then
                prepare_sleigh
            elseif no_elves = max_elves then
                help_elves
            end
        end

    help_elf
        -- Help the elves
        require
            is_busy
        do
            no_elves := no_elves - 1
            if no_elves = 0 then
                is_busy := false
            end
        end

feature {NONE}
    help_elves
        require
            no_elves = max_elves
            no_reindeers < max_reindeers
            not is_busy
        do
            is_busy := true
            io.put_string ("SANTA: let's help the elves!%N")
        end

    prepare_sleigh
        require
            no_reindeers = max_reindeers
        do
            io.put_string ("SANTA: Preparing the sleigh...%N")
            is_ready := true
        end

    go
        do
            is_xmas := true
            io.put_string ("SANTA: Oh oh oh fuckers! Tired of this shit, see ya!%N")
        end

feature
    is_busy: BOOLEAN
    is_xmas: BOOLEAN
    is_ready: BOOLEAN

invariant
    no_reindeers >= 0
    no_reindeers <= max_reindeers
    no_hitched_reindeers <= max_reindeers
    no_elves >= 0
    no_elves <= max_elves

end
