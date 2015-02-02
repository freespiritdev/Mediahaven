class Movie < ActiveRecord::Base
  belongs_to :users

  has_attached_file :image, styles: { medium: "300x500#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
