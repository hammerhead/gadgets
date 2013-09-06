class AddPhotoToGadget < ActiveRecord::Migration
  def up
    add_attachment :gadgets, :photo
  end

  def self.down
    remove_attachment :gadgets, :photo
  end
end
