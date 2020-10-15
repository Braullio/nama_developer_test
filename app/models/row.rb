# frozen_string_literal: true

# rubocop:disable Style/Documentation
class Row < ApplicationRecord
  belongs_to :archive

  validates :archive_id, :buyer, :description, :unitary_price, :address, :seller, presence: true
  validates :quantity, presence: true, numericality: { only_integer: true }
end
# rubocop:enable Style/Documentation
