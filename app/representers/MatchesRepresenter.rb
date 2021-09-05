class MatchesRepresenter

  def initialize(matches)
    @matches = matches
  end

  def as_json
    matches.map do |match|
      {
        id: match.id,
        title: match.title
      }
    end
  end

  private

  attr_reader :matches
end
