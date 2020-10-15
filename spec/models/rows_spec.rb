# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Row, type: :model do
  describe 'Model' do
    it 'is valid with valid attributes' do
      expect(create_row).to be_valid
    end

    it 'is not valid without a buyer' do
      row = FactoryBot.build(:row, buyer: '')
      expect(row).to_not be_valid
    end

    it 'is not valid without a description' do
      row = FactoryBot.build(:row, description: '')
      expect(row).to_not be_valid
    end

    it 'is not valid without a unitary_price' do
      row = FactoryBot.build(:row, unitary_price: '')
      expect(row).to_not be_valid
    end

    it 'is not valid without a address' do
      row = FactoryBot.build(:row, address: '')
      expect(row).to_not be_valid
    end

    it 'is not valid without a seller' do
      row = FactoryBot.build(:row, seller: '')
      expect(row).to_not be_valid
    end

    it 'is not valid without a quantity' do
      row = FactoryBot.build(:row, quantity: '')
      expect(row).to_not be_valid
    end

    it 'is not valid without a archive_id' do
      row = FactoryBot.build(:row, archive_id: '')
      expect(row).to_not be_valid
    end
  end

  def create_row
    FactoryBot.create(:row)
  end
end
