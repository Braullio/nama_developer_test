# frozen_string_literal: true

# rubocop:disable Style/Documentation
class Archive < ApplicationRecord
  has_many :rows, dependent: :destroy

  validates :name, presence: true
end
# rubocop:enable Style/Documentation
