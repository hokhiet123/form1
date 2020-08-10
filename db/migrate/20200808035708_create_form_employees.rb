class CreateFormEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :form_employees do |t|
      t.string :companyname
      t.string :tax
      t.string :address
      t.string :name
      t.string :position
      t.string :date
      t.string :description
      t.string :income
      t.string :note

      t.timestamps
    end
  end
end
