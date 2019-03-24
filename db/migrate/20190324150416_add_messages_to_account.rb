class AddMessagesToAccount < ActiveRecord::Migration[5.1]
  def change
    add_reference :messages, :account, index: true
  end
end
