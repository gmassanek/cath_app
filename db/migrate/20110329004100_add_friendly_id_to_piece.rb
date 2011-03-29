class AddFriendlyIdToPiece < ActiveRecord::Migration
  def self.up
    add_column :pieces, :cached_slug, :string
  end

  def self.down
    remove_column :pieces, :cached_slug
  end
end

