class Member
  attr_reader :_id,
              :name,
              :allies,
              :enemies,
              :photoUrl,
              :affiliation

  def initialize(_id:, name:, allies: [], enemies: [], photoUrl: "", affiliation: "")
    @_id = _id
    @name = name
    @allies = allies
    @enemies = enemies
    @photoUrl = photoUrl
    @affiliation = affiliation
  end
end
