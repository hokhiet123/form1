class FormEmployeesController < ApplicationController
  def new
    @form_employee= FormEmployee.new
  end

  def create
    @form_employee = FormEmployee.new(form_employee_params.merge(user_id: current_user.id))
   
    if @form_employee.save
      redirect_to current_user
    else
      render 'new'
    end
  end

  def index
    @form_employee = current_user.form_employees
  end
   
  private
    def form_employee_params
      params.require(:form_employee).permit(:companyname, :tax, :address, :name, :position, :date, :description, :income, :note)
    end
end
