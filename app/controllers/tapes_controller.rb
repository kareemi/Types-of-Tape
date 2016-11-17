class TapesController < ApplicationController
  def index
    @tapes = Tape.all
  end

  def show
    @tape - Tape.find(params[:id])
  end

  def create
    @tape = Tape.create(tape_params)
    redirect_to tapes_url
  end

  def destroy
    puts "PARAMS ARE" + params.inspect
    @tape = Tape.find(params[:id])
    @tape.destroy
    redirect_to tapes_url
  end

    private

    def tape_params
      params.require(:tape).permit(:kind, :purpose)
    end



end
