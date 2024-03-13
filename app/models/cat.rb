class Cat < ApplicationRecord
  has_many :somecats
  has_many :course_have_somecats, through: :somecats, source: :somecats
  has_many :courses, -> { distinct }, through: :somecats
    def self.popular
          Course.joins(:votes,:somecats).select("courses.*, avg(cast(votes.note as float)) as myvalue").group("courses.id").having("myvalue > ? and somecats.id in (#{somecats.map{|h|"?"}.join(",")}", 3,self.somecat_ids)
            end
      def self.trendingnew
        Course.joins(:votes,:somecats).select("courses.*, avg(cast(votes.note as float)) as myvalue").group("courses.id").having("courses.created_at > ? and myvalue > ? and somecats.id in (#{somecats.map{|h|"?"}.join(",")})",1.months.ago, 3,self.somecat_ids)
              end
end
