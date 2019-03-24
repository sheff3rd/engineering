class AddPhotosToStudio < ActiveRecord::Migration[5.1]
  def change
    add_reference :photos, :studio, index: true
  end
end
