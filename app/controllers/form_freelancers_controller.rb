class FormFreelancersController < ApplicationController
  def new
    @form_freelancer= FormFreelancer.new
  end

  def create
    @form_freelancer = FormFreelancer.new(form_freelancer_params)
   
    if @form_freelancer.save
      redirect_to current_user
    else
      render 'new'
    end
  end
   
  private
    def form_freelancer_params
      params.require(:form_freelancer).permit(:name, :time, :job, :date, :customer, :income, :description)
    end
end
