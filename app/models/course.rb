class Course < ApplicationRecord
  has_many :course_have_somecats
  has_many :user_start_courses
  has_many :somecats, through: :course_have_somecats

  #has_and_belongs_to_many :somecats, :join_table => :course_have_somecats

  def catid
    course_have_somecats[0].cat.id
  end
  has_many :lectures
  has_many :votes
  accepts_nested_attributes_for :lectures, allow_destroy: true
  before_validation do
     errors.add(:somecats, "sélectionner 1 ou plusieurs catégories") if self.somecats.length == 0
  end
  def hours
    self.nbminutes.to_i/60.to_i
  end
  def self.popular
    Course.joins(:votes).select("courses.*, avg(cast(votes.note as float)) as myvalue").group("courses.id").having("myvalue > ?", 3)
  end
  def self.trendingnew
    Course.joins(:votes).select("courses.*, avg(cast(votes.note as float)) as myvalue").group("courses.id").having("courses.created_at > ? and myvalue > ?",1.months.ago, 3)
  end
  def note
    Course.joins(:votes).select("courses.*, avg(cast(votes.note as float)) as myvalue").group("courses.id").having("courses.id = ?",self.id)[0].myvalue.to_i
  rescue
    5
  end
end
