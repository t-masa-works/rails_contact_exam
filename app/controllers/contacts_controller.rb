class ContactsController < ApplicationController

    def new
      @contact = Contact.new
    end

    def create
      @contact = Contact.create(contact_params)
      return redirect_to new_contact_path, notice: "お問い合わせを送信しました！"if @contact.save
      return render:new
    end

    private

    def contact_params
     params.require(:contact).permit(:name, :email, :content)
    end
end
