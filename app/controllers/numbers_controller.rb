class NumbersController < ApplicationController

  def show

    race = Race.find(params[:race_id])
    @one_frequency = Number.where("race_id = ? AND number = ?", params[:race_id], '1').count
    @two_frequency = Number.where("race_id = ? AND number = ?", params[:race_id], '2').count
    @three_frequency = Number.where("race_id = ? AND number = ?", params[:race_id], '3').count
    @four_frequency = Number.where("race_id = ? AND number = ?", params[:race_id], '4').count
    @five_frequency = Number.where("race_id = ? AND number = ?", params[:race_id], '5').count
    @six_frequency = Number.where("race_id = ? AND number = ?", params[:race_id], '6').count
    @seven_frequency = Number.where("race_id = ? AND number = ?", params[:race_id], '7').count
    @eight_frequency = Number.where("race_id = ? AND number = ?", params[:race_id], '8').count
    @nine_frequency = Number.where("race_id = ? AND number = ?", params[:race_id], '9').count
    @ten_frequency = Number.where("race_id = ? AND number = ?", params[:race_id], '10').count
    
  end

end
