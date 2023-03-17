require 'rails-helper'

RSpec.describe User, type: :model do
  subject { User.create(username: 'user') }
  before(subject.save)

  context 'user validate' do
    it 'username valid' do
      subject.username = nil
      expect(subject).to_not be_valid
    end

    it 'username valid' do
      subject.username = 'user'
      expect(subject).to eql('user')
    end
  end
end
