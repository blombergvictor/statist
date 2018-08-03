class PagesController < ApplicationController
  def home
    @emojis = Emoji.all
  end
end
