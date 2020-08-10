class FormFreelancersController < ApplicationController
  def new
    @form_freelancer= FormFreelancer.new
  end

  def create
    @form_freelancer = FormFreelancer.new(form_freelancer_params.merge(user_id: current_user.id))
    
    if @form_freelancer.save
      redirect_to current_user
    else
      render 'new'
    end
  end
   
  def index
    @form_freelancer = current_user.form_freelancers
  end

  private
    def form_freelancer_params
      params.require(:form_freelancer).permit(:name, :time, :job, :date, :customer, :income, :description)
    end
end
