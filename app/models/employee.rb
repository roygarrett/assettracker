class Employee < ApplicationRecord
  has_one_attached :profile_picture do |attachable|
    attachable.variant :thumb, resize_to_limit: [50, 50]
  end
  has_and_belongs_to_many :softwares
  has_many :devices 

 def full_name
    first_name + " " + last_name
 end 
end
