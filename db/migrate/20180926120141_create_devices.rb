class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.string :mac_id
      t.string :name
      t.string :ip

      t.timestamps
    end
  end
end
