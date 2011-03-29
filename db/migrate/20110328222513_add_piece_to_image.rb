class AddPieceToImage < ActiveRecord::Migration
  def self.up
    add_column :images, :piece_id, :integer
  end

  def self.down
    remove_column :images, :piece_id
  end
end

