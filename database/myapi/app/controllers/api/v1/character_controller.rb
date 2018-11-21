module Api
    module V1
        class CharacterController < ApplicationController
            def index
                characters = Character.order('created_at DESC');
                render json: {status: 'SUCCESS', msg:'Loaded Characters', data:characters}, status: :ok
            end

            def show
                character = Character.find(params[:id])
                render json: {status: 'SUCCESS', msg:'Loaded Character', data:character}, status: :ok
            end

            def create
                character = Character.new(character_params)
                if article.save
                    render json: {status: 'SUCCESS', msg:'Saved Character', data:character}, status: :ok
                else
                    render json: {status: 'FAIL', msg:'Character failed to save', data:character.errors}, status: :unprocessable_entity
            end

            def destroy
                character = Character.find(params[:id])
                character.destroy
                render json: {status: 'FAIL', msg:'Deleted Character', data:character}, status: :ok
            end

            def update
                character = Character.find(params[:id])
                if character.update_attributes(character_params)
                    {status: 'SUCCESS', msg:'Character updated', data:character}, status: :ok
                else
                    {status: 'FAIL', msg:'Character failed to update', data:character.errors}, status: :unprocessable_entity
                end
            end


            private

            def character_params
                params.permit(:name, :power, :item, :description:)
            end
        end
    end
end