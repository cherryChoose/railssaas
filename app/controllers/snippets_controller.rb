class SnippetsController < ApplicationController
  def show
    @snippet = Snippet.find(params[:id])
  end

  def new
    @snippet = Snippet.new
  end

  def create
    @snippet = Snippet.new(snippet_params)
    if @snippet.save
      PygmentsWork.perform_in(1.hour, @snippet.id )
    else
      render :new
    end
  end

  private
  def snippet_params
    params.require(:snippet).permit!
  end  
end
