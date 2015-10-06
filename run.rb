require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/states' do
  # code!

  states=[Nebraska,NE, New York, NY, New Jersey, NJ, New Hampshire , NH, North Carolina, NC]
  states.split(',')
  states.strip!
  state={id: states[1], name: states[0]}
  states << state
  state.name.sort!




  erb :states, layout: :main
end
