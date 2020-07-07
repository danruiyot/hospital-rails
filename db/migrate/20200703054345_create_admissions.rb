class CreateAdmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :admissions do |t|
      t.integer :patient_id
      t.integer :doctor_id
      t.integer :ward_id
      t.integer :date_released

      t.timestamps
    end
  end
end
