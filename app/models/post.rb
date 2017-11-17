class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :receiver, class_name: 'User'
  default_scope { order(created_at: 'DESC') }
  
  has_attached_file :image, styles: { medium: "500x500>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end