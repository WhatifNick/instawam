json.extract! imagepost, :id, :image_url, :user_id, :created_at, :updated_at
json.url imagepost_url(imagepost, format: :json)
