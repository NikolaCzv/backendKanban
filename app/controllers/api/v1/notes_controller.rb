class Api::V1::NotesController < ApplicationController
    def index
        notes = Note.all

        render json: notes
    end

    def show
        note = Note.find(params[:id])

        render json: note
    end

    def create
        note = Note.create(content: params[:content], user_id: params[:user_id], position: params[:position])

        render json: note
    end
end
