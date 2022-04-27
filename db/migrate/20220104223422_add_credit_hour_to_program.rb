class AddCreditHourToProgram < ActiveRecord::Migration[5.2]
  def change
    add_column :programs, :credit_hour, :float
  end
end
