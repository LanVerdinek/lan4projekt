class AddAttachmentImageToMovies < ActiveRecord::Migration
  def self.up
    change_table :movies do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :movies, :image
  end
  
  # Paperclip config:
Paperclip.options[:image_magick_path] = "/opt/ImageMagick/bin"
Paperclip.options[:command_path] = "/opt/ImageMagick/bin"
  
end
