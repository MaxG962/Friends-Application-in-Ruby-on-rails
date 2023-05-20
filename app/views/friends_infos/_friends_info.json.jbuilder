json.extract! friends_info, :id, :First_name, :Last_name, :Contact, :Email, :Instagram, :created_at, :updated_at
json.url friends_info_url(friends_info, format: :json)
