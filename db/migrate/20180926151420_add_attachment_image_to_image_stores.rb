class AddAttachmentImageToImageStores < ActiveRecord::Migration[5.1]
  def self.up
    change_table :image_stores do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :image_stores, :image
  end
end
