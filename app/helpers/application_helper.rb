module ApplicationHelper
def add_game(game)
"<p>Add to your list</p>".html_safe

    @user = current_user
    @user.games_id.push(game.id.to_s)
    @user.save
    'Added'

end

end
