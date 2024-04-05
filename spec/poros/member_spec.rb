require 'rails_helper'

RSpec.describe Member do
  describe "#initialize" do
    let(:member_data) do {
      "id": "5cf5679a915ecad153ab68da",
      "allies": ["Ozai", "Zuko"],
      "enemies": ["Iroh", "Zuko", "Kuei", "Long Feng", "Mai","Ty Lee", "Ursa"],
      "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941",
      "name": "Azula",
      "affiliation": "Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)"
      }
    end

    it "has the correct attributes" do
      member = Member.new(**member_data)

      expect(member.id).to eq("5cf5679a915ecad153ab68da")
      expect(member.name).to eq("Azula")
      expect(member.allies).to eq(["Ozai", "Zuko"])
      expect(member.enemies).to eq(["Iroh", "Zuko", "Kuei", "Long Feng", "Mai","Ty Lee", "Ursa"])
      expect(member.photoUrl).to eq("https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941")
      expect(member.affiliation).to eq("Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
    end
  end
end
