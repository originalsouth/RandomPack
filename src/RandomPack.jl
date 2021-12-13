module RandomPack

using Random

export random_pack, random_pack_release

store = Set{Cstring}()

Base.@ccallable function random_pack(input::Cstring)::Cstring
    jinput = unsafe_string(input)
    str = randstring(rand(length(jinput):rand(2:12)*length(jinput)))
    retval = Base.unsafe_convert(Cstring, jinput * ":" * str)
    push!(store, retval)
    return retval
end

Base.@ccallable function random_pack_release(input::Cstring)::Cint
    if input in store
        pop!(store, input)
        return Cint(0)
    else
        return Cint(1)
    end
end

end
