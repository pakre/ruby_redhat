require 'rubygems' 
require 'prawn'

pdf = Prawn::Document.new
#pdf.text "Hello World"
#pdf.render_file "assignment.pdf"
## Implicit Block
Prawn::Document.generate("implicit.pdf") do


## Explicit Block
#Prawn::Document.generate("explicit.pdf") do |pdf|
#pdf.text "Hello World"
#end
#
data = [ ["Item", "Jan Sales", "Feb Sales"],
["Oven", 17, 89],
["Fridge", 62, 30],
["Microwave", 71, 47]
]
puts data
table(data) do
values = cells.columns(1..-1).rows(1..-1)
bad_sales = values.filter do |cell|
cell.content.to_i < 40
end
bad_sales.background_color = "FFAAAA"
good_sales = values.filter do |cell|
cell.content.to_i > 70
end
good_sales.background_color = "AAFFAA"
end


end

#otevirani v genouis acc
