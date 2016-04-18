Deface::Override.new(
  virtual_path:  'spree/admin/products/_form',
  name:          'gift_card',
  insert_after:  '[data-hook="admin_product_form_promotionable"]',
  partial:       'spree/admin/products/edit_gift_card.html.erb'
)

Deface::Override.new(
  virtual_path:  'spree/admin/products/index',
  name:          'gift_card_header',
  insert_before: '[data-hook="admin_products_index_header_actions"]',
  text:          '<th>Is Gift Card</th>'
)

Deface::Override.new(
  virtual_path:  'spree/admin/products/index',
  name:          'gift_card_row',
  insert_before: '[data-hook="admin_products_index_row_actions"]',
  text:          '<td class="text-center"><%= product.gift_card? %></td>'
)