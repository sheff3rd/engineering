class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      # not sure what are listings and what fields supposed to be here

      t.timestamps
    end
  end
end
