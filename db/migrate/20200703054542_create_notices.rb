class CreateNotices < ActiveRecord::Migration[6.0]
  def change
    create_table :notices do |t|
      t.string :title
      t.text :message
      t.date :expiry
      t.date :start
      t.integer :target

      t.timestamps
    end
  end
end
