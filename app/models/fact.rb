class Fact < ActiveRecord::Base
  default_scope {order('start_time DESC')}
  belongs_to :activity
  has_many :fact_tags
  has_many :tags, through: :fact_tags

end
