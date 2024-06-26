class NationService
  def members_by_nation(nation)
    get_url("characters?affiliation=#{nation}&perPage=500")
  end

  def get_url(url, params = {})
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://last-airbender-api.fly.dev/api/v1')
  end
end
