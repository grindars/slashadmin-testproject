class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.belongs_to :foo, :null => false
      t.string     :title, :null => false
      t.timestamps
    end

    add_index :bars, [ :foo_id ]
  end
end
