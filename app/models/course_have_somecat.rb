class CourseHaveSomecat < ApplicationRecord
  belongs_to :course

  belongs_to :somecat
  has_one :cat, through: :somecat
  
end
