json.extract! confession, :id, :title, :likes, :dislikes, :created_at, :updated_at
json.url confession_url(confession, format: :json)
