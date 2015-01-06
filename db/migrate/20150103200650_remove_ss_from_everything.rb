class RemoveSsFromEverything < ActiveRecord::Migration
  def change
  	remove_column :patient_infos, :spouse_ss
  	remove_column :dental_insurances, :subscriber_ss

  	drop_table :personals
  end
end
