def nyc_pigeon_organizer(data)
    pigeon_hash = {}
    
data.each do |trait, choices|
    choices.each do |choice, pigeons|
        pigeons.each do |pigeon|
        pigeon_hash[pigeon] ||= {}
            #binding.pry
        pigeon_hash[pigeon][trait] ||= []
            #binding.pry
        pigeon_hash[pigeon][trait] << choice.to_s
    end
end
end

pigeon_hash
end


#{
 # "Theo" => {
  #  :color => ["purple", "grey"],
   # :gender => ["male"],
    #:lives => ["Subway"]
#  },
 # "Peter Jr." => {
  #  :color => ["purple", "grey"],
   # :gender => ["male"],
    #:lives => ["Library"]
#  },
 # "Lucky" => {
  #  :color => ["purple"],
   # :gender => ["male"],
   # :lives => ["Central Park"]
#  },
 # "Ms .K" => {
#    :color => ["grey", "white"],
#    :gender => ["female"],
#    :lives => ["Central Park"]
#  },
#  "Queenie" => {
#    :color => ["white", "brown"],
#    :gender => ["female"],
#    :lives => ["Subway"]
#  },
#  "Andrew" => {
#    :color => ["white"],
#    :gender => ["male"],
#    :lives => ["City Hall"]
#  },
#  "Alex" => {
#    :color => ["white", "brown"],
#    :gender => ["male"],
#    :lives => ["Central Park"]
#  }
#}
