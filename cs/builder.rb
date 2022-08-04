require './reader'
require './cleaner'
require 'csv'
require 'erb'

geol_data = (CSV.parse(File.read('./data/P-EXAMPLE_GEOL-Table 1.csv'), headers: true))
gosa_data = CSV.parse(File.read('./data/P-EXAMPLE_GOSA-Table 1.csv'), headers: true)

@entries = get_entries(geol_data)
@num_entries = get_num_entries(geol_data)
@origins = get_origins(geol_data)


# Tests
puts @entries
puts @num_entries
puts @origins










# @bh01_id = data[1][0]

# @layer1_mat = data[1][3]
# @layer2_mat = data[1][6]
# @layer3_mat = data[1][9]

# @layer1_top = data[1][1]
# @layer2_top = data[1][4]
# @layer3_top = data[1][7]

# @layer1_bottom = data[1][2]
# @layer2_bottom = data[1][5]
# @layer3_bottom = data[1][8]



# render template
# template = File.read('../template.html.erb')
# result = ERB.new(template).result(binding)

# # write result to file
# File.open('strata_summary.html', 'w+') do |f|
#   f.write result
# end