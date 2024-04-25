class ChangeZipCodeTypeInCities < ActiveRecord::Migration[7.1]
  def change
    change_column :cities, :zip_code, :integer
  end
end
