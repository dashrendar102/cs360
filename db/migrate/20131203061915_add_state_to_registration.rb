class AddStateToRegistration < ActiveRecord::Migration
  def change
    add_column :registrations, :state, :string
  end
end
