# frozen_string_literal: true

# rubocop:disable Style/Documentation
class CreateArchives < ActiveRecord::Migration[5.2]
  def change
    create_table :archives do |t|
      t.timestamps
      t.string :name
    end
  end
end
# rubocop:enable Style/Documentation
