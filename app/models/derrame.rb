class Derrame < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
end
