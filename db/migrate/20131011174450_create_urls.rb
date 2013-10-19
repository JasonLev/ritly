class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.text :link
      t.integer :hash_code
      t.string :created_at
      t.string :datetime
      t.datetime :updated_at

      t.timestamps
    end
  end
end
