json.extract! innovation, :id, :InnovationID, :InnovationName, :InnovationCategory, :IsInnovationFavorite?, :InnovationTargetUrl, :created_at, :updated_at
json.url innovation_url(innovation, format: :json)
