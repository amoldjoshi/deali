class Innovation < ApplicationRecord
	has_one_attached :image
	#attr_accessible :InnovationID, :InnovationName, :InnovationCategory, :IsInnovationFavorite?, :InnovationTargetUrl
end
