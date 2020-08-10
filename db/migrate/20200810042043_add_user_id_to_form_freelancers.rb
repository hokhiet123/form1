class AddUserIdToFormFreelancers < ActiveRecord::Migration[6.0]
  def change
    add_reference :form_freelancers, :user, null: false, foreign_key: true
  end
end
