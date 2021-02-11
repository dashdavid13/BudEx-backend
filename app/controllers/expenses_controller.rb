class ExpensesController < ApplicationController


    def new
        @expense = expense.new(:user_id => @user.id)
    end 
    
    def index 
        @expenses = Expense.all
        render json: @expenses
    end 

    def show
        @expense = Expense.find_by(id: params[:id])
        if @expense
            render json: @expense
        else
            render json: {error: 'Expense not found'}
        end
    end


    def create 
        current_user = User.first

        @expense = current_user.expenses.create!(expense_params)
        if @expense.valid?
            render json: @expense
        else
            render json: {error: @expense.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
        @expense = Expense.find(params[:id])
        @expense.update(expense_params)
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
