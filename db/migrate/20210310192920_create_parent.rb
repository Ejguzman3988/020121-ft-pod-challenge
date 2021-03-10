class CreateParent < ActiveRecord::Migration[6.1]
  def change
    create_table :parents do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
    end
  end
end
