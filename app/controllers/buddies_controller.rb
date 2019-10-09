class BuddiesController < ApplicationController
  def index
    @students = Buddy.where(batch: 325).shuffle

    @buddies = []

    i = 1
    loop do
      array = []
      array << @students[i - 1] << @students[i]
      @buddies << array
      i += 2
      break if i > @students.size
    end

    @ta = Buddy.where.not(batch: 325)
  end

  def show
    @buddy = Buddy.find(params[:id])
  end
end
