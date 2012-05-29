class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :count
      t.timestamps
    end
  end
end
