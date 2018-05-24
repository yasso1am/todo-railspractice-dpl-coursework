class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :todo
      t.string :duedate
      t.string :description

      t.timestamps
    end
  end
end
