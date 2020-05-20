class TurnipsController < ApplicationController
  def index
  	@turnips = Turnip.all
  	@turnip = Turnip.new
  end

  def create
  	@turnip = Turnip.new
  	if @turnip.save
  	   redirect_to turnips_path, notice: '投稿に成功しました'
  	else
  	   @turnips = Turnip.all
  	   flash.now[:notice] = '投稿に失敗しました'
  	   render :index
  	end
  end

  private
  	def turnip_params
      params.require(:turnip).permit(:name, :price, :password, :want)
    end
end
