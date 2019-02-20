class WeeklyAdd < ApplicationRecord
	#Amol added following line for active storage.
	has_one_attached :logo

	#Amol added this for amazon cloud.
	logo.attach(params[:logo])
end
