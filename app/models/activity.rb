class Activity < ActiveRecord::Base
  belongs_to :category
  has_many :fact
  has_many :tags
end
