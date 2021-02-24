class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.belongs_to :user
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
