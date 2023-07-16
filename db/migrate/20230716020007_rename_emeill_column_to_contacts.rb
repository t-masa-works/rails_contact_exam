class RenameEmeillColumnToContacts < ActiveRecord::Migration[6.1]
  def change
    rename_column :contacts, :emeill, :email
  end
end
