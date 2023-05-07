require 'rails_helper'

RSpec.describe User, type: :model do
   context "Validation of mandatory fields" do
    it "Validates if name field is present" do
      user = build(:user)
      
      expect(user.valid?).to eq(true)
      #or it's more common to use: expect(user).to be_truthy/be_falsey
    end

    it "Validates if name field is not present" do
      user = build(:user, name: nil)
      
      expect(user.valid?).to eq(false)
    end

    it "Validates if phone field is present" do
      user = build(:user)
      
      expect(user.valid?).to eq(true)
      #or it's more common to use: expect(user).to be_truthy/be_falsey
    end

    it "Validates if phone field is not present" do
      user = build(:user, phone: nil)
      
      expect(user.valid?).to eq(false)
    end

    it 'Validates if email field is present' do
      user = build(:user)

      expect(user.valid?).to eq(true)
    end

    it 'Validates if email field is not present' do
      user = build(:user, email: nil)

      expect(user.valid?).to eq(false)
    end

    it 'Validates if password field is present' do
      user = build(:user)

      expect(user.valid?).to eq(true)
    end

    it 'Validates if password field is not present' do
      user = build(:user, password: nil)

      expect(user.valid?).to eq(false)
    end
  end
end
