class BufferController < ApplicationController
  def index
  end

  def new
  end

  def send
    me = FbGraph::User.me(ACCESS_TOKEN)
      me.feed!(
        :message => 'Updating via FbGraph',
        :picture => 'nil',
        :link => 'https://github.com/nov/fb_graph',
        :name => 'FbGraph',
        :description => 'A Ruby wrapper for Facebook Graph API'
      )
  end

  def create
  end

  def destroy
  end

  def update
  end

  def edit
  end
end
