class Movie < ActiveRecord::Base
  searchkick
  belongs_to :user
  has_many :reviews
  
  has_attached_file :image, styles: { thumb: "100x100#", small: "200x400#", medium: "400x600#", large: "600x600#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  default_scope { order('created_at DESC') }
end
