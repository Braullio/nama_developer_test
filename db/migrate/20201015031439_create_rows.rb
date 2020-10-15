# frozen_string_literal: true

# rubocop:disable Style/Documentation
class CreateRows < ActiveRecord::Migration[5.2]
  def change
    create_table :rows do |t|
      t.timestamps
      t.references :archives, foreign_key: true
      t.string     :buyer
      t.text       :description
      t.float      :unitary_price
      t.integer    :quantity
      t.text       :address
      t.string     :seller
    end
  end
end
# rubocop:enable Style/Documentation
