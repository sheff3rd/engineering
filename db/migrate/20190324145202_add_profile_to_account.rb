class AddProfileToAccount < ActiveRecord::Migration[5.1]
  def change
    add_reference :profiles, :account, index: true
  end
end
