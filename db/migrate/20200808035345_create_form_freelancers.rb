class CreateFormFreelancers < ActiveRecord::Migration[6.0]
  def change
    create_table :form_freelancers do |t|
      t.string :name
      t.string :time
      t.string :job
      t.string :date
      t.string :customer
      t.string :income
      t.string :description

      t.timestamps
    end
  end
end
