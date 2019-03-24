class AddLocationsToAccount < ActiveRecord::Migration[5.1]
  def change
    add_reference :locations, :account, index: true
  end
end
