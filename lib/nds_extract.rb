$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require "pp"
 require "pry"
 #binding pry
def directors_totals(nds)
 directors_total = {}
  
  pp nds
  
  row_index = 0
  
 while row_index < nds.count do
  inner_index = 0
   directors_name = nds[row_index][:name]
   directors_total[directors_name] = 0
   
   while inner_index < nds[row_index][:movies].count do 
     #binding.pry
     
     directors_total[directors_name] += nds[row_index][:movies][inner_index][:worldwide_gross]
  
     inner_index += 1
   end
   row_index += 1
   
 end
 
 directors_total
  
end
