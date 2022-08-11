require 'csv'


def get_entries(data)
    return data["PointID"].uniq
end

def get_num_entries(data)
    return data["PointID"].length
end





def get_units(geoldata, gosadata)
  origins = (geoldata["GEOL_ORIG"].map { |origin| origin[0].upcase + origin[1..] }).uniq
  



  # Unit Order Array
unit_order = [
  'Topsoil',
  'Fill',
  'Colluvium',
  'Alluvium',
  'Estuarine',
  'Residual',
  'Weathered_Material',
  'Rock'
]
  site_units = []
   unit_order.each do |unit|
      if origins.include?(unit)
       site_units.push(unit)
      end
   end

    if site_units.include? 'Topsoil' && 'Fill' 
      site_units.unshift('Topsoil/Fill')
      site_units.delete('Topsoil')
      site_units.delete('Fill')
    end

    return site_units

end

