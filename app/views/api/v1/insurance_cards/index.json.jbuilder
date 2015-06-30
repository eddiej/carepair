json.array! @cards do |card|
	json.id card.id
  json.temporary_uploads card.temporary_uploads
end
