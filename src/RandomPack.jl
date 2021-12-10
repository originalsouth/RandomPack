module RandomPack

using Random

export random_pack

Base.@ccallable function random_pack(input::Cstring)::Cstring
    jinput = unsafe_string(input)
    str = randstring(rand(length(jinput):rand(2:12)*length(jinput)))
    return Base.unsafe_convert(Cstring, jinput * ":" * str)
end

end
