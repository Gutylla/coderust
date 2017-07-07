def insertBits(n, a, b, k)
    n_binary = n.to_s(2)
    # while b > n_binary.size
    #    n_binary.concat('0') 
    # end

    n_binary.reverse!
    k_binary = k.to_s(2)

    p n_binary
    p a+k_binary.size
    n_binary[a..[b,a+k_binary.size].min] = k_binary
    n_binary.reverse.to_i(2)
end


n = 1024
a = 1
b = 6
k = 17
p insertBits(n, a, b, k)