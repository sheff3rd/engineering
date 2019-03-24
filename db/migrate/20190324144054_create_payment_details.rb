class CreatePaymentDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_details do |t|
      t.string :first_name
      t.string :last_name
      t.timestamp :birthday

      t.string :sort_code
      t.string :account_number
      t.string :routing_number
      t.string :iban
      t.string :bsb

      t.timestamps
    end
  end
end
