require 'pry'

def nyc_pigeon_organizer(data)
  organized_data = data.each_with_object({}) do |(key, value), final_array|
    value.each do |inner_key, names|
      names.each do |name|
        if !final_array[name]
          final_array[name] = {}
        end
        if !final_array[name][key] 
          final_array[name][key] = []
        end
      end
      final_array[name][key] << inner_key.to_s 
    end
    final_array
  end
end