class CreateLectures < ActiveRecord::Migration[7.0]
  def change
    create_table :lectures do |t|
      t.integer :course_id
      t.text :titre
      t.text :text

      t.timestamps
    end
  end
end
