class CreatePlateAccounts < ActiveRecord::Migration
  def change
    create_table :plate_accounts do |t|
      t.string :state
      t.string :plate_num
      t.string :email
      t.string :name

      t.timestamps
    end
  end
end
