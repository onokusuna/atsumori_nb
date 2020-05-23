class TurnipsController < ApplicationController
  def index
  	@turnips = Turnip.all.reverse_order
  	@turnip = Turnip.new
  end

  def create
  	@turnip = Turnip.new(turnip_params)
  	if @turnip.save
  	  redirect_to turnips_path, success: "投稿に成功しました"
  	else
  	  @turnips = Turnip.all
  	  flash.now[:danger] = "投稿に失敗しました"
  	  render :index
  	end
  end

  private
  	def turnip_params
      params.require(:turnip).permit(:name, :price, :islandpass, :started_at, :finished_at, :want)
    end
end
