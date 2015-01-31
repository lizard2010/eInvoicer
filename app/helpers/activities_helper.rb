module ActivitiesHelper

  def pretty_fact(activity)
    #      activity.fact.map { |d| d.description if d }
    #activity.fact.map { |x| x.description}.reject!{ |c| c.empty?}.join(',') if
    @facts =  activity.fact.map { |x| x.description}.compact!
    @facts.join(',') if @facts
    # .reject!{ |c| c.empty?}

  end
end
