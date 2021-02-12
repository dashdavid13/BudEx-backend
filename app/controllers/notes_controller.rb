class NotesController < ApplicationController
    before_action :authorize
    

    def index 
        notes = Note.all
        render json: notes
    end 

    def show
        note = Note.find(params[:id])
        render json: note
    end


    def create
        note = Note.create(note_params)
        render json: note
    end

    def update
        note = Note.find(params[:id])
        note.update(note_params)
        render json: note
    end 

    def destroy
        note = Note.find(params[:id])
        note.destroy
        render json: note
    end

    private

    def note_params
        params.permit(:content, :expense_id, :user_id)
    end
end
