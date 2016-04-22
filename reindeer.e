class
    REINDEER

create
    make

feature
    make (s: separate SANTA; name: STRING)
    do
        santa := s
        id := name
    end

    wake_up
    do
        separate santa as s
        do
            go_to_santa (s)
        end
    end

feature {NONE}
    go_to_santa (s: separate SANTA)
        do
            io.put_string (id + " -- Knock knock knockin' on Santa's door...%N")
            s.reindeer_knock_knock
            get_hitched (s)
        end

    get_hitched (s: separate SANTA)
        require
            s.is_ready
        do
            io.put_string (id + " -- Getting hitched%N")
            s.hitch_reindeer
        end

feature {NONE}
    santa: separate SANTA
    id: STRING

end
