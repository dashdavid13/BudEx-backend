class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.integer :due_date
      t.string :name
      t.integer :cost
      t.belongs_to :user, null: false, foreign_key: true, on_delete: :cascade
    

      t.timestamps
    end
  end
end
