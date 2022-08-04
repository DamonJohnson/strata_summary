require 'csv'


def get_entries(data)
    return data["PointID"].uniq
end

def get_num_entries(data)
    return data["PointID"].length
end

# Unit Summary Table
def get_origins(data)
  data["GEOL_ORIG"].uniq.map { |origin| origin[0].upcase + origin[1..] }
end


