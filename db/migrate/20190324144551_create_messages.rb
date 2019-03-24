class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.integer :message_type # enum
      t.string :from
      t.string :to
      t.text :body

      t.timestamps
    end
  end
end
