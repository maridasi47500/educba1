class Cat < ApplicationRecord
  has_many :somecats
  has_many :course_have_somecats, through: :somecats, source: :somecats
  has_many :courses, -> { distinct }, through: :somecats
    def popular
      Course.joins(:votes,:somecats).select("courses.*, avg(cast(votes.note as float)) as myvalue,count(distinct votes.id) as numvotes").group("courses.id").having((["myvalue > ? and somecats.id in (#{somecats.map{|h|"?"}.join(",")}) and numvotes > 20", 2]+self.somecat_ids))
            end
      def trendingnew
        Course.joins(:votes,:somecats).select("courses.*, avg(cast(votes.note as float)) as myvalue").group("courses.id").having((["courses.created_at > ? and myvalue > ? and somecats.id in (#{somecats.map{|h|"?"}.join(",")})",1.months.ago, 3]+self.somecat_ids))
              end
      def self.search(x)
        Course.left_joins(:somecats).where("(select count(distinct x.somecat_id) from course_have_somecats x where x.somecat_id in (#{x.join(",")})) >= #{x.length} and courses.id in (select (x.course_id) from course_have_somecats x where x.somecat_id in (#{x.join(",")}) and courses.id = x.course_id) ").distinct
      end
end
