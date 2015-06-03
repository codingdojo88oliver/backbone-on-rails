class MessagesController < ApplicationController
	respond_to :json

	def index
		respond_with Message.all
	end

	def show
		respond_with Message.find(params[:id])
	end

	def create
		respond_with Message.create(message_params)
	end

	private
	def message_params
		params.require(:message).permit(:content)
	end
end
