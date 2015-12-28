class Reviewtune < ActiveRecord::Base
  belongs_to :user
  belongs_to :tune

  default_scope { order('created_at DESC') }
end
