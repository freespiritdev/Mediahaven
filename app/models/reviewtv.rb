class Reviewtv < ActiveRecord::Base
  belongs_to :user
  belongs_to :show

  default_scope { order('created_at DESC') }
end
