class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.integer :contest_id
      t.integer :designer_id

      t.timestamps
    end
  end
end
