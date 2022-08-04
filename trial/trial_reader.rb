require 'csv'
require 'erb'

data = CSV.parse(File.read("trial_strata.csv"), headers: true)

@bh01_id = data[1][0]

@layer1_mat = data[1][3]
@layer2_mat = data[1][6]
@layer3_mat = data[1][9]

@layer1_top = data[1][1]
@layer2_top = data[1][4]
@layer3_top = data[1][7]

@layer1_bottom = data[1][2]
@layer2_bottom = data[1][5]
@layer3_bottom = data[1][8]

# render template
template = File.read('../template.html.erb')
result = ERB.new(template).result(binding)

# write result to file
File.open('strata_summary.html', 'w+') do |f|
  f.write result
end