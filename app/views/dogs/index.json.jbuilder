json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :breed, :age, :cgc, :registration, :therapy_group, :renewal_date, :image, :description, :gender, :member, :retired
  json.url dog_url(dog, format: :json)
end
