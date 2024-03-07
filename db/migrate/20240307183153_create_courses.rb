class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :titre
      t.integer :nbminutes
      t.text :curriculum

      t.timestamps
    end
  end
end
