class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.references :requester
      t.string :title
      t.text :description
      t.datetime :start_date
      t.datetime :deadline
      t.float :budget
      t.boolean :status

      t.timestamps
    end
  end
end
