class AddSendDateToVirtualGiftCard < ActiveRecord::Migration
  def change
    add_column :spree_virtual_gift_cards, :send_date, :datetime
  end
end
