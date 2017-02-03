class Course < ApplicationRecord
  belongs_to :author
  
  has_many :lessons
end
