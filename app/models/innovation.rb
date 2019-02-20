class Innovation < ApplicationRecord
	has_one_attached :image
	#attr_accessible :InnovationID, :InnovationName, :InnovationCategory, :IsInnovationFavorite?, :InnovationTargetUrl

	#Amol added this for amazon cloud.
	image.attach(params[:image])
end
