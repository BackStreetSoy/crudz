get '/' do 

erb :index 
end 

post '/' do 
   if User.authenticate(params[:username], params[:password]) == nil
    redirect "/"
  else
    @user = User.authenticate(params[:username], params[:password])
    session[:user_id] = @user.id
    redirect '/home'
  end
end 

get '/home' do 
    @letters = Letter.all
    erb :home 
end 

get '/letter/:id' do 
    @letter = Letter.find_by(id: params[:id])
    @entries = Entry.where(letter_id: @letter.id)


    erb :words
end 

get '/entry/new' do 

    erb :new_word
end 


post '/entry' do 
    @entry = Entry.create(params[:entry])
    @entry.letter = Letter.find_by(symbol: params[:letter])
    @entry.save

    redirect '/home'
end 


delete '/entry/:entry_id' do 
    @entry = Entry.find_by(id: params[:entry_id])
    @entry.destroy!

    redirect '/home'
end 

put '/entry/:entry_id' do 
    @entry = Entry.find_by(id: params[:entry_id])
    @entry.update_attributes(params[:entry])

    redirect '/home'
end 


get '/entry/:entry_id/edit' do 
    @entry = Entry.find_by(id: params[:entry_id])

    erb :edit 
end 




