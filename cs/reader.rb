require 'csv'


def get_entries(data)
    return data["PointID"].uniq
end

def get_num_entries(data)
    return data["PointID"].length
end

# Unit Summary Table
# Hash to determine the order of units in the
unit_order = {  
  Topsoil: 0,
  Fill: 1,
  Colluvium: 2,
  Alluvium: 3,
  Estuarine: 3,
  Residual: 4,
  Weathered_Material: 5,
  Rock: 6
}



def get_units(geoldata, gosadata)
  origins = geoldata["GEOL_ORIG"].uniq.map { |origin| origin[0].upcase + origin[1..] }
  units = Hash.new

  if origins.include? 'Topsoil' && 'Fill' 
    units["Unit 1"] = 'Topsoil/Fill'
  end

end

