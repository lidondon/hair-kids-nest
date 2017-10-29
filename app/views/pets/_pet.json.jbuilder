json.extract! pet, :id, :type_id, :person_id, :region_id, :sub_region, :sex, :size, :color, :description, :status, :contact_person, :contact_method
json.photos (pet.pet_photos) do |photo|
	json.extract! photo, :image_url
end