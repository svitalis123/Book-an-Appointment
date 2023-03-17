require 'rails-helper'
RSpec.describe Service, type: :model do
  subject { Service.ne(service: 'Test service', photo: 'test.jpg', description: 'Test description', labour: 'Test labour', engineer: 'Test engineer', price: 100, duration: 60) }

  before { subject.save }
  context ' service should be validated' do
    it 'validate service' do
      subject.service = 'Test service'
      expect(subject).to eql('Test service')
    end

    it 'validate service' do
      subject.service = nil
      expect(subject).to_not be_valid
    end
  end

  context ' photo should be validated' do
    it 'validate photo' do
      subject.service = 'test.jpg'
      expect(subject).to eql('test.jpg')
    end

    it 'validate test.jpg' do
      subject.service = nil
      expect(subject).to_not be_valid
    end
  end

  context ' description should be validated' do
    it 'validate description' do
      subject.service = 'Test description'
      expect(subject).to eql('Test description')
    end

    it 'validate description' do
      subject.service = nil
      expect(subject).to_not be_valid
    end
  end

  context ' labour should be validated' do
    it 'validate labour' do
      subject.service = 'Test labour'
      expect(subject).to eql('Test labour')
    end

    it 'validate labour' do
      subject.service = nil
      expect(subject).to_not be_valid
    end
  end

  context ' engineer should be validated' do
    it 'validate engineer' do
      subject.service = 'Test engineer'
      expect(subject).to eql('Test engineer')
    end

    it 'validate engineer' do
      subject.service = nil
      expect(subject).to_not be_valid
    end
  end

  context ' price should be validated' do
    it 'validate price' do
      subject.service = 100
      expect(subject).to eql(100)
    end

    it 'validate price' do
      subject.service = nil
      expect(subject).to_not be_valid
    end
  end

  context ' duration should be validated' do
    it 'validate duration' do
      subject.service = 60
      expect(subject).to eql(60)
    end

    it 'validate duration' do
      subject.service = nil
      expect(subject).to_not be_valid
    end
  end
end
