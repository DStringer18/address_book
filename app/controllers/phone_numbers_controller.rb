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
      if @phone_number.save
        redirect_to contact_path(@contact)
      else
        render 'new'
      end
  end

  def update
    @contact = Contact.find(params[:contact_id])
    @phone_number = @contact.phone_numbers.find(params[:id])

    if @phone_number.update(phone_number_params)
      redirect_to contact_path(@contact), notice: "Saved!"
    else
      render 'edit'
    end
  end

  def destroy
    @contact = Contact.find(params[:contact_id])
    @phone_number = @contact.phone_numbers.find(params[:id])
    @phone_number.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to contact_path(@contact), notice: 'Phone number was successfully deleted' }
      format.json { head :no_content }
    end
  end

  private
    def phone_number_params
      params.require(:phone_number).permit(:number, :comment)
    end
end
