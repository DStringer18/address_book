class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
    @address = Address.new(contact: @contact)
    @phone_number = PhoneNumber.new(contact: @contact)
    @email = Email.new(contact: @contact)
  end

  def new
    @contact = Contact.new
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to @contact, notice: 'Contact was successfully created'
    else
      render 'new'
    end
  end

  def update
    @contact = Contact.find(params[:id])

    if @contact.update(contact_params)
      redirect_to contact_path(@contact)
    else
      render 'edit'
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_path
  end

  private
    def contact_params
      params.require(:contact).permit(:salutation, :first_name, :middle_name, :last_name, :ssn, :dob, :comment)
    end
end