class CreateUserStartCourse < ActiveRecord::Migration[7.0]
  def change
    create_table :user_start_courses do |t|
      t.integer :course_id
      t.integer :user_id

      t.timestamps
    end
  end
end
