class PhoneNumbersController < ApplicationController  
  
  def index
    @contact = Contact.find(params[:contact_id])
    @phone_numbers = PhoneNumber.all
    @phone_number = PhoneNumber.new
  end
  
  def new
    @contact = Contact.find(params[:contact_id])
    @phone_number = PhoneNumber.new
  end
  
  def edit
    @contact = Contact.find(params[:contact_id])
    @phone_number = @contact.phone_numbers.find(params[:id])
  end

  def create
    @contact = Contact.find(params[:contact_id])
    @phone_number = @contact.phone_numbers.create(phone_number_params)
    redirect_to contact_phone_numbers_path(@contact)
  end

  def update
    @contact = Contact.find(params[:contact_id])
    @phone_number = @contact.phone_numbers.find(params[:id])

    if @phone_number.update(phone_number_params)
      redirect_to contact_phone_numbers_path(@contact), notice: "Saved!"
    else
      render 'edit'
    end
  end

  def destroy
    @contact = Contact.find(params[:contact_id])
    @phone_number = @contact.phone_numbers.find(params[:id])
    @phone_number.destroy
    redirect_to contact_phone_numbers_path(@contact)
  end

  private
    def phone_number_params
      params.require(:phone_number).permit(:kind, :number, :comment)
    end
end
