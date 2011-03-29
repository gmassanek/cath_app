class AlterUserGalleryToGalleryId < ActiveRecord::Migration
  def self.up
      rename_column :pieces, :gallery, :gallery_id
  end

  def self.down
      rename_column :pieces, :gallery_id, :gallery
  end
end

