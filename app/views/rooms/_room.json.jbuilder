json.extract! room, :id, :name, :senderid, :receiverid, :created_at, :updated_at
json.url room_url(room, format: :json)
