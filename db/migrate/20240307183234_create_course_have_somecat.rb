class CreateCourseHaveSomecat < ActiveRecord::Migration[7.0]
  def change
    create_table :course_have_somecats do |t|
      t.integer :course_id
      t.integer :somecat_id

      t.timestamps
    end
  end
end
