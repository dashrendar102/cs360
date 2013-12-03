class CreateViolations < ActiveRecord::Migration
  def change
    create_table :violations do |t|
      t.string :plateNum
      t.string :plateState
      t.text :violationType
      t.string :picture
      t.datetime :date

      t.timestamps
    end
  end
end
