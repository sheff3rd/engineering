class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :avatar
      t.text :bio

      t.string :website_url
      t.string :twitter_handle
      t.string :instagram_handle
      t.string :streaming_url

      t.timestamps
    end
  end
end
