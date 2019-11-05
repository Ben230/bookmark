require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
    'Hello'
  end

  get '/bookmarks' do
    @bookmark = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  post '/bookmarks/new' do
    Bookmark.create(url: params['url'])
    redirect '/bookmarks'
  end

  run if app_file == $0
end
