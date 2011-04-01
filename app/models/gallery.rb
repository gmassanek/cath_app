# == Schema Information
# Schema version: 20110324035601
#
# Table name: galleries
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  cached_slug :string(255)
#

class Gallery < ActiveRecord::Base
  has_many :pieces
  has_friendly_id :title, :use_slug => true
  validates :title, :uniqueness => true

  def image
    #first of images, shuffled = random image (or nil if none)
    pieces.shuffle.each do |p|
      return p.image
    end
  end
end

