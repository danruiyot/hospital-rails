class CreateWards < ActiveRecord::Migration[6.0]
  def change
    create_table :wards do |t|
      t.string :name

      t.timestamps
    end
  end
end
