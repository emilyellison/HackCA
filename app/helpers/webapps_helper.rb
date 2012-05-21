module WebappsHelper
  def fields_for_team(team, &block)
    prefix = team.new_record? ? 'new' : 'existing'
    fields_for("webapp[#{prefix}_team_attributes][]", team, &block)
  end
end