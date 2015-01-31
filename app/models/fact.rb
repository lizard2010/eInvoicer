class Fact < ActiveRecord::Base
  belongs_to :activity
  has_many :fact_tags
  has_many :tags, through: :fact_tags

end
