class AddCachedSlugToGallery < ActiveRecord::Migration
  def self.up
    add_column :galleries, :cached_slug, :string
  end

  def self.down
    remove_column :galleries, :cached_slug
  end
end
