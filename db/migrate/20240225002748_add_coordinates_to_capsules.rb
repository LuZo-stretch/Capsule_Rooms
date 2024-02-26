class AddCoordinatesToCapsules < ActiveRecord::Migration[7.1]
  def change
    add_column :capsules, :latitude, :float
    add_column :capsules, :longitude, :float
  end
end
