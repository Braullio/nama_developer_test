# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :archive do
    name { Faker::FunnyName.name }
  end

  factory :row do
    buyer         { Faker::Name.name }
    description   { Faker::Lorem.sentence }
    unitary_price { 10.0 }
    address       { Faker::Address.street_address }
    seller        { Faker::Company.industry }
    quantity      { 25 }
    archive       { create(:archive) }
  end
end
