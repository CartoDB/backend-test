class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :title
      t.string :category
      t.integer :mapviews
      t.references :user

      t.timestamps
    end
  end
end
