class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.text :name
      t.text :emeill
      t.text :content

      t.timestamps
    end
  end
end
