class CreateCapsules < ActiveRecord::Migration[7.1]
  def change
    create_table :capsules do |t|
      t.string :name
      t.text :address
      t.text :description
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
