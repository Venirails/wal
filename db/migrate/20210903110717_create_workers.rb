class CreateWorkers < ActiveRecord::Migration[6.1]
  def change
    create_table :workers do |t|
      t.string :name
      t.integer :age
      t.integer :emp_id
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
