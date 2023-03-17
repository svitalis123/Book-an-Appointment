require 'rails-helper'
RSpec.describe Service, type: :model do
    subject{Service.ne(service: "Test service", photo: "test.jpg", description: "Test description", labour: "Test labour", engineer: "Test engineer", price: 100, duration: 60)}

    before { subject.save }
    context "should be validated" do
        it "validate service" do 
            subject.service = "Test service"
            expect(subject).to eql("Test service")
        end
        it "validate service" do 
            subject.service = nil
            expect(subject).to_not be_valid
        end
    end
end