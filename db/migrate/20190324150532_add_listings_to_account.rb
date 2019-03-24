class AddListingsToAccount < ActiveRecord::Migration[5.1]
  def change
    add_reference :listings, :account, index: true
  end
end
