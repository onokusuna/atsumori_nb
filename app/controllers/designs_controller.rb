class DesignsController < ApplicationController
  def index
  	@design = Design.new
    # 以下ransack検索用
    @search = Design.ransack(params[:q])
    @designs = @search.result.reverse_order
  end

  def create
  	@design = Design.new(design_params)
  	if @design.save
  	  redirect_to designs_path, success: "投稿に成功しました"
  	else
  	  @designs = Design.all
  	  flash.now[:danger] = "投稿に失敗しました"
  	  render :index
  	end
  end

  def search
    index
    render :index
  end

  private
  	def design_params
      params.require(:design).permit(:title, :name, :id_image, :sample_image, :category)
    end

    def search_params
      params.require(:q).permit(:sorts, :title, :name, :id_image, :sample_image, :category)
      # 他のパラメーターもここに入れる
    end
end
