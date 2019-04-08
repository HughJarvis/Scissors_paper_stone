require ('sinatra')
require ('sinatra/contrib/all')
require ('pry-byebug')
require_relative ('models/scissors_paper_stone.rb')


get "/scissors_paper_stone/:hand1/:hand2" do
  game = ScissorsPaperStone.new(params['hand1'],
                                params['hand2'])
  @game_result = game.scissors_paper_stone()
  erb (:result)
end
