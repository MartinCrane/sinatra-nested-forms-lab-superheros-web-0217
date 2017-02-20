require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :super_hero
    end

    post "/teams" do
      members = params["team"]["members"]

      @team = Team.new(params["team"])

      members.each do |hero|
        Hero.new(hero)
      end
      @members = Hero.all
      erb :team
    end
end
