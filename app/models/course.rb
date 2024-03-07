class Course < ApplicationRecord
  has_many :course_have_somecats
  has_many :somecats, through: :course_have_somecats
  has_and_belongs_to_many :somecats, :join_table => :course_have_somecats
  before_validation do
     errors.add(:somecats, "sélectionner 1 ou plusieurs catégories") if self.somecats.length == 0
  end
end
