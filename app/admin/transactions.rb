ActiveAdmin.register Transaction do
    permit_params :description, :debits, :credits, :user_id

    # controller do
    #     # This code is evaluated within the controller class
    
    #     def create
    #     #   user_id = params[:transaction][:user_id]
    #     #   desc = params[:transaction][:description]
    #     #   debit = params[:transaction][:debits]
    #     #   credit = params[:transaction][:credits]
    #     #   user = User.find(user_id)
    #       Transaction.create(transaction_params)
    #     #   byebug
    #     end

    #     private

    #     def transaction_params
    #       params.require(:transaction).permit(:description, :debits, :credits, :user_id)
    #     end
    #   end
end
