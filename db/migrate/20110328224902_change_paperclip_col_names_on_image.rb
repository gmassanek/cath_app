class ChangePaperclipColNamesOnImage < ActiveRecord::Migration
  def self.up
    rename_column :images, :file_name, :photo_file_name
    rename_column :images, :content_type, :photo_content_type
    rename_column :images, :file_size, :photo_file_size
  end

  def self.down
    rename_column :images, :photo_file_name, :file_name
    rename_column :images, :photo_content_type, :content_type
    rename_column :images, :photo_file_size, :file_size
  end
end

