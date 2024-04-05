class SearchFacade
  attr_reader :nation

  def initialize(nation)
    @nation = nation
  end

  def members
    service = NationService.new

    json = service.members_by_nation(@nation)
    json.map do |member_data|
      Member.new(member_data)
    end
  end
end
