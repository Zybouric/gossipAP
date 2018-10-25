class PrivateMessage < ApplicationRecord
	belong_to :sender, class_name:"User"
	has_many :receiver, class_name:"User" 
end
