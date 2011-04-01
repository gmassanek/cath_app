class RemoveFromUsers < ActiveRecord::Migration
  def self.up
    remove_column :images, :title
    remove_column :images, :description
  end

  def self.down
    add_column :images, :title, :string
    add_column :images, :description, :text
  end
end

