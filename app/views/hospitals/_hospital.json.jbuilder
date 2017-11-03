json.extract! hospital, :id, :name, :phone, :address, 
json.photos (hospital.hospital_photos) do |photo|
	json.extract! photo, :image_url
end