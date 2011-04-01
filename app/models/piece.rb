# == Schema Information
# Schema version: 20110329004100
#
# Table name: pieces
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  gallery_id  :integer
#  cached_slug :string(255)
#

class Piece < ActiveRecord::Base
  belongs_to :gallery
  has_many :images
  has_friendly_id :title, :use_slug => true
  validates :title, :uniqueness => true
  validates :gallery_id, :presence => true

  def image
    #first of images, shuffled = random image (or nil if none)
    images.shuffle.first
  end
end

