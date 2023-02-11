require 'rails_helper'

RSpec.describe Food, type: :model do
  before { subject.save }
  
  describe 'validations' do
    it 'should have email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end
  end

    
end