class RobotSchmaster < ApplicationRecord
    belongs_to :game

    def name_of_home_game
        game = Game.all.find do |game|
            game.id == self.game_id
        end
        game.name
    end
end
