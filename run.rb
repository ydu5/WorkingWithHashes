require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/states' do
  # code!

  @states = []
  state = {id: 'IN', name: 'Indiana'}
  @states << state
  state = {id: 'MI', name: 'Michigan'}
  @states << state
  state = {id: 'NJ', name: 'New Jersey'}
  @states << state
  state4 = {id: 'NY', name: 'New York'}
  @states << state
  state = {id: 'AZ', name: 'Arizona'}
  @states << state
  @states.sort_by! {|state| state[:name]}

  erb :states, layout: :main
end
