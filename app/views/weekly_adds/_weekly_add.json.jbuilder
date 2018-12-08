json.extract! weekly_add, :id, :AddID, :AddName, :AddCategory, :IsAddFavorite?, :AddTargetUrl, :created_at, :updated_at
json.url weekly_add_url(weekly_add, format: :json)
