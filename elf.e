class
    ELF

inherit
    PROCESS

create
    make

feature
    make (s: separate SANTA; name: STRING)
    do
        santa := s
        id := name
    end

    run
    do
        live
    end

feature {NONE}
    go_to_santa (s: separate SANTA)
        require
            not s.is_busy
        do
            io.put_string (id + " -- Knock knock knockin' on Santa's door...%N")
            s.elf_knock_knock
            get_help (s)
        end

    get_help (s: separate SANTA)
        require
            s.is_busy
        do
            io.put_string (id + " -- Getting served...%N")
            s.help_elf
        end

    over: BOOLEAN
                -- Should execution terminate now?
            do
                separate santa as s do
                    Result := s.is_xmas
                end
            end
    step
        do
            separate santa as s do
                go_to_santa (s)
            end
        end

feature {NONE}
    santa: separate SANTA
    id: STRING

end
