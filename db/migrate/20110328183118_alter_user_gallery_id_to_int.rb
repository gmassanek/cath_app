class AlterUserGalleryIdToInt < ActiveRecord::Migration
  def self.up
    remove_column :pieces, :gallery_id
    add_column :pieces, :gallery_id, :integer
  end

  def self.down
    remove_column :pieces, :gallery_id
    add_column :pieces, :gallery_id, :string
  end
end

