require 'sinatra/base'
require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/bookmark' do
    @bookmarks = Bookmark.all
    erb :bookmark
  end

  run! if app_file == $0
end