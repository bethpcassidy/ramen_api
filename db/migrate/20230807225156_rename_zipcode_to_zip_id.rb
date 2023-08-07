class RenameZipcodeToZipId < ActiveRecord::Migration[7.0]
  def change
    rename_column :locations, :zipcode, :zip_id
  end
end
