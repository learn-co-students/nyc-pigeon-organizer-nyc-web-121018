def nyc_pigeon_organizer(data)
  # write your code here!
#   pigeon_list = {}
# data.each do |key,values|
#     values.each do |value,names|
#       names.each do |name|
#         pigeon_list[name] ||= {}
#         pigeon_list[name][key] ||= []
#         pigeon_list[name][key] << value.to_s
#       end
#     end
#   end
#   pigeon_list
# end

pigeon_hash = {}
 data.each_pair do |attribute, values|
   # attribute like :color
 #   values = {
 #   :purple => ["Theo", "Peter Jr.", "Lucky"],
 #   :grey => ["Theo", "Peter Jr.", "Ms. K"],
 #   :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
 #   :brown => ["Queenie", "Alex"]
 # }
   values.each_pair do |specific_values, pigeons|
     # specific_values like :purple
     # pigeons like ["Theo", "Peter Jr.", "Lucky"]
     pigeons.each do |pigeon|
       # pigeon like "theo"
       # i
       if pigeon_hash[pigeon].nil?
         # binding.pry
         pigeon_hash[pigeon] = {}
       end
       if pigeon_hash[pigeon][attribute]
         pigeon_hash[pigeon][attribute] << specific_values.to_s
       else
         pigeon_hash[pigeon][attribute] = []
         pigeon_hash[pigeon][attribute] << specific_values.to_s
       end

       # either the pigeon exists
       # it does not exist
     end
   end
 end
 # binding.pry
 pigeon_hash
end
