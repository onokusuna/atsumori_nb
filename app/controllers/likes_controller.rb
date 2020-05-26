class LikesController < ApplicationController
  def create
    design = Design.find(params[:design_id])
    like = Like.new(design_id: design.id)
    if like.save
      redirect_to designs_path, success: "いいねしました"
    else
  	  @designs = Design.all
  	  flash.now[:danger] = "いいねに失敗しました"
  	  render "designs/index"
    end
  end

  def destroy
    #design = Design.find(params[:design_id])
    #like = current_user.likes.find_by(design_id: design.id)
    #like.destroy
    #redirect_back(fallback_location: root_path)
  end
end
