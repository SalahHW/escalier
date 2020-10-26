if ARGV.length < 2
    puts "#{__FILE__} require at least two argument. Integer"
    exit
end

ARGV.each_with_index{|el, i| ARGV[i] = el.to_i} # On transforme tout les éléments du tableau en Integer

decroissant = false
while decroissant == false # Tant que les nombres ne sont pas dans l'ordre decroissant
    decroissant = true
    i = 0
    while i < ARGV.length - 1
        if ARGV[i] < ARGV[i + 1]  # Si le nombre est plus petit que le suivant ET que le nombre suivant existe...
            temp = ARGV[i] # Variable temporaire
            ARGV[i] = ARGV[i + 1] # On les inverse
            ARGV[i + 1] = temp
            decroissant = false # On fait en sorte de repasser dans la boucle pour revérifier le tout
        end
        i += 1
    end
end

ARGV.each {|i| print "#{i} "}
puts