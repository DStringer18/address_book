class AddressesController < ApplicationController
  def create
    @contact = Contact.find(params[:contact_id])
    @address = @contact.addresses.create(address_params)
    redirect_to article_path(@contact)
  end

  private
    def address_params
      params.require(:address).permit(:street, :town, :zip, :state, :country_code)
end
