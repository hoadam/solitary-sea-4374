require 'rails_helper'
describe NationService do
  context "class methods" do
    context "#members_by_nation" do
      it "returns member data", :vcr do
        search = NationService.new.members_by_nation("Fire Nation")
        expect(search).to be_an(Array)
        member_data = search.first

        expect(member_data).to have_key :name
        expect(member_data[:name]).to be_a(String)
        expect(member_data).to have_key :allies
        expect(member_data[:allies]).to be_an(Array)
        expect(member_data).to have_key :enemies
        expect(member_data[:enemies]).to be_a(Array)
        expect(member_data).to have_key :affiliation
        expect(member_data[:affiliation]).to be_a(String)
      end
    end
  end
end
