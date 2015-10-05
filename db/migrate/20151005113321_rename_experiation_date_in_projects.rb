class RenameExperiationDateInProjects < ActiveRecord::Migration
  def change
  	rename_column :projects, :experiation_date, :expiration_date
  end
end
