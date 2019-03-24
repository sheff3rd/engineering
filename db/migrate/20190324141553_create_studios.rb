class CreateStudios < ActiveRecord::Migration[5.1]
  def change
    create_table :studios do |t|
      t.string :name
      t.text :details
      t.text :minimum_booking
      t.integer :studio_type, array: true # enum
      t.text :studio_hours
      t.text :audio_samples
      t.text :amenities
      t.text :equipment
      t.text :rules
      t.integer :price
      t.boolean :audio_engineer_included
      t.boolean :verified

      t.timestamps
    end
  end
end
