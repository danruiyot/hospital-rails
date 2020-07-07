class CreateDiagnoses < ActiveRecord::Migration[6.0]
  def change
    create_table :diagnoses do |t|
      t.string :title
      t.text :notes
      t.text :prescriptions
      t.integer :patient_id
      t.integer :add_by
      t.integer :updated_by
      t.integer :is_admited

      t.timestamps
    end
  end
end
