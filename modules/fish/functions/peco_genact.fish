function peco_genact
    genact -l | tail +2 | peco | xargs genact -m
end
