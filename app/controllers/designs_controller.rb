class DesignsController < ApplicationController
  def index
  	@designs = Design.all.reverse_order
  	@design = Design.new
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

  private
  	def design_params
      params.require(:design).permit(:title, :name, :id_image, :sample_image, :category)
    end
end
