require 'rails_helper'

RSpec.describe Doctor, type: :model do
  subject { build(:doctor) }

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a phone number' do
      subject.phone_number = nil
      expect(subject).to_not be_valid
    end
  end
end
