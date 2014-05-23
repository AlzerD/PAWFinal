class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy]

  # GET /matches
  # GET /matches.json
  def index
    if(params[:first_match].to_i == 0)    
      @matches = Match.all 
      puts params #Debug
    else
      @matches = Match.where(:id => params[:first_match].to_i..params[:last_match].to_i)
      puts params #Debug
     end
  end

  # GET /matches/1
  # GET /matches/1.json
  def show
  end

  # GET /matches/new
  def new
    @match = Match.new
  end

  # GET /matches/1/edit
  def edit
  end

  # POST /matches
  # POST /matches.json
  def create
    @match = Match.new(match_params)

    respond_to do |format|
      if @match.save
        format.html { redirect_to @match, notice: 'Match was successfully created.' }
        format.json { render :show, status: :created, location: @match }
      else
        format.html { render :new }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matches/1
  # PATCH/PUT /matches/1.json
  def update
    respond_to do |format|
      if @match.update(match_params)
        format.html { redirect_to @match, notice: 'Match was successfully updated.' }
        format.json { render :show, status: :ok, location: @match }
      else
        format.html { render :edit }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matches/1
  # DELETE /matches/1.json
  def destroy
    @match.destroy
    respond_to do |format|
      format.html { redirect_to matches_url }
      format.json { head :no_content }
    end
  end
    
  def create_match_pick
     if params[:match_ids].nil?
       redirect_to matches_url, :flash => { :error => 'Your notice or whatever' } 
     else
       @matches = Match.find(params[:match_ids])
       @userpick = params[:user_picks] unless params[:user_picks].nil?
       @matches.each_with_index do |match, index|
         MatchPick.create!(:userID => session[:user_id], :matchID => match.id, :userPick => @userpick[index]) 
         if @matches.size == index + 1
           redirect_to blocks_path
         end
        end
     end
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_params
      params.require(:match).permit(:block, :round, :date, :day, :time, :venue, :team1, :team2, :result, :resultString, :played)
    end
end
