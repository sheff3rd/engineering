class AddStudiosToAccount < ActiveRecord::Migration[5.1]
  def change
    add_reference :studios, :account, index: true
  end
end
