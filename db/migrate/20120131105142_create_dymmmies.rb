class CreateDymmmies < ActiveRecord::Migration
  def change
    create_table :dymmmies do |t|
      t.string :title
      t.text :description
      t.float :budget
      t.datetime :deadline

      t.timestamps
    end
  end
end
