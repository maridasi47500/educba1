class Cat < ApplicationRecord
  has_many :somecats
  has_many :course_have_somecats, through: :somecats, source: :somecats
  has_many :courses, through: :somecats
end
