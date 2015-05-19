class RenameRegistersToRegistrants < ActiveRecord::Migration
  def change
    rename_table :registers, :registrants
  end
end
