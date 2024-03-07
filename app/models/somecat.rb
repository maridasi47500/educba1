class Somecat < ApplicationRecord
  belongs_to :cat
  has_many :course_have_somecats
     has_many :courses, through: :course_have_somecats
end
