json.extract! pet, :id, :type_id, :person_id, :sex, :size, :color, :description, :status
json.url pet_url(pet, format: :json)