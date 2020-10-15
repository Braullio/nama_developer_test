# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Archive, type: :model do
  describe 'Model' do
    it 'is valid with valid attributes' do
      expect(create_archive).to be_valid
    end

    it 'is not valid without a name' do
      archive = FactoryBot.build(:archive, name: '')
      expect(archive).to_not be_valid
    end
  end

  def create_archive
    FactoryBot.create(:archive)
  end
end
