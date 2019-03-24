class AddLocationsToStudios < ActiveRecord::Migration[5.1]
  def change
    add_reference :locations, :studio, index: true
  end
end
