class ExpensesController < ApplicationController
   

    
    def index 
        @expenses = Expense.all
        render json: @expenses 
    end 

    def show
        @expense = Expense.find_by(id: params[:id])
        render json: @expense
    end


    def create
        
        @expense = Expense.create!(expense_params)
        render json: @expense
    end

    def update
        expense = Expense.find(params[:id])
        expense.update(expense_params)
        render json: @expense
    end 
   

    def destroy
        @expense = Expense.find(params[:id])
        @expense.destroy
        render json: @expense
    end

    private

    def expense_params
        params.permit( :name, :cost, :user_id, :id )
    end
end
