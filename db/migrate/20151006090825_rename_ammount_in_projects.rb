class RenameAmmountInProjects < ActiveRecord::Migration
  def change
  	rename_column :pledges, :ammount, :amount
  end
end
