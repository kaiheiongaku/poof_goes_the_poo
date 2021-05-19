require 'rails_helper'

describe User do
  before :each do
    user = User.new(first_name: 'Robert', last_name: 'Heath', email: 'robert.b.heathii@gmail.com', phone_number: 3049054977, street_address: '674 Locust', city: 'Chester', state: 'WV', zip: 26034)
  end

  describe 'validations' do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :email }
    it { should validate_presence_of :phone_number }
    it { should validate_presence_of :street_address }
    it { should validate_presence_of :city }
    it { should validate_presence_of :state }
    it { should validate_presence_of :zip }
  end
end
