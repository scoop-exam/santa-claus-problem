class
    APPLICATION

create
    make

feature -- Initialization

    make
        local
            i: INTEGER
            r : separate REINDEER
            e : separate ELF
            s : separate SANTA
        do
            io.put_string (">>> BEGIN%N")

            create s.make

            from i := 0
            until i > no_elves - 1
            loop
                io.put_string (">>> Launching elf%N")
                create e.make (s, "elf" + i.out)
                e.run
                i := i + 1
            end

            from i := 0
            until i > no_reindeers - 1
            loop
                io.put_string (">>> Launching reindeer%N")
                create r.make (s, "rnd" + i.out)
                r.wake_up
                i := i + 1
            end

            io.put_string (">>> END%N")
        end

feature
    no_reindeers: INTEGER = 9 -- Is fixed
    no_elves: INTEGER = 20 -- Could be anything

end
