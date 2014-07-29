class ContactsController < ApplicationController

  def index
   contacts = User.find(params[:id]).contacts

   shared_contacts = User.find(params[:id]).shared_contacts

   render json: (contacts + shared_contacts).uniq
  end

  def show
    render json: Contact.params[:id]
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render json: @contact
    else
      render(
        json: @contact.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def destroy
    @contact = Contact.find(params[:id])

    @contact.destroy!
    render json: @contact
  end

  def update
    @contact = Contact.update(params[:id], contact_params)
    if @contact.save
      render json: @contact
    else
      render(
        json: @contact.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :user_id)
  end

end