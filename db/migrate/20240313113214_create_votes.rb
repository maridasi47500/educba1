class CreateVotes < ActiveRecord::Migration[7.0]
  def change
    create_table :votes do |t|
      t.integer :course_id
      t.integer :user_id
      t.string :note

      t.timestamps
    end
  end
end
