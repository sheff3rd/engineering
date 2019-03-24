class AddPaymentDetailsToAccount < ActiveRecord::Migration[5.1]
  def change
    add_reference :payment_details, :account, index: true
  end
end
