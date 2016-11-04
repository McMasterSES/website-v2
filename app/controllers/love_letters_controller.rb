class LoveLettersController < ApplicationController
  def index
    @letters = LoveLetter.all
  end

  def show
    @letter = LoveLetter.find(params['id'])
  end

  def new
    @letter = LoveLetter.new
  end

  def create
    @letter = LoveLetter.new
    @letter.title = params['love_letter']['title']
    @letter.body = params['love_letter']['body']
    @letter.save

    redirect_to love_letter_path(@letter)

  end

end
