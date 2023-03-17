require "rails-helper"

RSpec.describe Reservation, type: :model do
    subject{Reservation.new(model: "model", year: 2010, vehicle:"vehicle", color: "color", service: "service")}
    before (subject.save)
    context "reservation validate" do
        it "resrevation validate" do
            subject.model = nil
            expect(subject).to_not be_valid
        end
        it "resrevation validate" do
            subject.year = nil
            expect(subject).to_not be_valid
        end
        it "resrevation validate" do
            subject.vehicle = nil
            expect(subject).to_not be_valid
        end
        it "resrevation validate" do
            subject.color = nil
            expect(subject).to_not be_valid
        end
        it "resrevation validate" do
            subject.service = nil
            expect(subject).to_not be_valid
        end


        it "resrevation validate" do
            subject.model = model
            expect(subject).to_not be_valid
        end
        it "resrevation validate" do
            subject.year = year
            expect(subject).to_not be_valid
        end
        it "resrevation validate" do
            subject.vehicle = vehicle
            expect(subject).to_not be_valid
        end
        it "resrevation validate" do
            subject.color = color
            expect(subject).to_not be_valid
        end
        it "resrevation validate" do
            subject.service = service
            expect(subject).to_not be_valid
        end
    end
end