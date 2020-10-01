class AddressesController < ApplicationController
  
  def index
    @contact = Contact.find(params[:contact_id])
    @addresses = Address.all
    @address = Address.new
  end

  def new
    @contact = Contact.find(params[:contact_id])
    @address = Address.new
  end
  
  def edit
    @contact = Contact.find(params[:contact_id])
    @address = @contact.addresses.find(params[:id])
  end

  def create
    @contact = Contact.find(params[:contact_id])
    @address = @contact.addresses.create(address_params)
      if @address.save
        redirect_to contact_path(@contact)
      else
        render 'new'
      end
  end

  def update
    @contact = Contact.find(params[:contact_id])
    @address = @contact.addresses.find(params[:id])

    if @address.update(address_params)
      redirect_to contact_path(@contact), notice: "Saved!"
    else
      render 'edit'
    end
  end

  def destroy
    @contact = Contact.find(params[:contact_id])
    @address = @contact.addresses.find(params[:id])
    @address.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to contact_path(@contact), notice: 'Address was successfully deleted' }
      format.json { head :no_content }
    end
  end

  private
    def address_params
      params.require(:address).permit(:street, :town, :zip, :state, :country)
    end
end