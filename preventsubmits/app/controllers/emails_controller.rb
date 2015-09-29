class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def new
    @email = Email.new
  end

  def create
    @email = Email.new params.require(:email).permit(:recipient, :subject, :body)
    if @email.save
      redirect_to root_path
    else
      render :new
    end
  end
end
