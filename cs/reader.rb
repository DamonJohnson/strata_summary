require 'csv'
require 'erb'



def get_entries(data)
    return data["PointID"].uniq
end

def get_num_entries(data)
    return data["PointID"].length
end


# Unit Summary Table
def get_units(data)
  return data["GEOL_ORIG"].uniq
end


