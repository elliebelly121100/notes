class IdeaController < ApplicationController


  def index
    @idea = Idea.all
  end
    
  def new
  end
  
  def create
    n = Idea.new
    n.idea = params['idea']
    n.title = params['title']
    n.save
    redirect_to "/idea/#{ n.id }"
  end
  
  def show
    @idea = Idea.find_by_id(params['id'])
  end
  
  def edit
    @idea = Idea.find_by_id(params['id'])
  end
  
  def update
    n = Idea.find_by_id(params['id'])
    n.title = params['title']
    n.idea = params['idea']
    n.save
    redirect_to "/idea/#{ n.id }"
  end
  
  def destroy
    n = Idea.find_by_id(params['id'])
    n.destroy
    redirect_to "/ideas"
  end

end
