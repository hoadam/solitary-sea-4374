class Member
  attr_reader :id,
              :name,
              :allies,
              :enemies,
              :photoUrl,
              :affiliation

  def initialize(id:, name:, allies:, enemies:, photoUrl:, affiliation:)
    @id = id
    @name = name
    @allies = allies
    @enemies = enemies
    @photoUrl = photoUrl
    @affiliation = affiliation
  end
end
