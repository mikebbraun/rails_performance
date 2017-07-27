class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.belongs_to :code_school, foreign_key: true

      t.timestamps
    end
  end
end
