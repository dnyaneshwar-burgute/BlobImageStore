class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.belongs_to :device, index: true

      t.timestamps
    end
  end
end
