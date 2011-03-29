class CreateZztests < ActiveRecord::Migration
  def self.up
    create_table :zztests do |t|
      t.string :name
      t.string :cached_slug

      t.timestamps
    end
  end

  def self.down
    drop_table :zztests
  end
end
