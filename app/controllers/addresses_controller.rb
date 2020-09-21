class AddressesController < ApplicationController
  def index
    @addresses = Address.all
  end
  
  def show
    @address = Address.find(params[:id])
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
    redirect_to contact_path(@contact)
  end

  def update
    @contact = Contact.find(params[:contact_id])
    @address = @contact.addresses.find(params[:id])

    if @address.update(address_params)
      redirect_to @contact, notice: "Saved!"
    else
      render 'edit'
    end
  end

  def destroy
    @contact = Contact.find(params[:contact_id])
    @address = @contact.addresses.find(params[:id])
    @address.destroy
    redirect_to contact_path(@contact)
  end

  private
    def address_params
      params.require(:address).permit(:street, :town, :zip, :state, :country)
    end
end