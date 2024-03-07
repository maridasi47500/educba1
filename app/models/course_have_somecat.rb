class CourseHaveSomecat < ApplicationRecord
  belongs_to :course
  belongs_to :somecat
  
end
