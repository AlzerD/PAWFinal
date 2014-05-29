class MatchPicksController < ApplicationController
  before_action :set_match_pick, only: [:show, :edit, :update, :destroy]
  # GET /match_picks
  # GET /match_picks.json
  def index
    if ((params[:block].to_i == 0)&&(current_user.admin == true))    
      @match_picks = MatchPick.all.order(:matchID, :userID) 
      puts params #Debug
    elsif (params[:block].to_i.between?(1,current_user.curr_block)) 
      @match_picks = MatchPick.where(:userID => session[:user_id], :blockID => params[:block].to_i).order(:matchID, :userID)       
    else
      flash[:error] = 'Not a valid block'
      redirect_to :blocks
    end      
  end

  # GET /match_picks/1
  # GET /match_picks/1.json
  def show
  end

  # GET /match_picks/new
  def new
    @match_pick = MatchPick.new
  end

  # GET /match_picks/1/edit
  def edit
  end

  # POST /match_picks
  # POST /match_picks.json
  def create
    @match_pick = MatchPick.new(match_pick_params)

    respond_to do |format|
      if @match_pick.save
        format.html { redirect_to @match_pick, notice: 'Match pick was successfully created.' }
        format.json { render :show, status: :created, location: @match_pick }
      else
        format.html { render :new }
        format.json { render json: @match_pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /match_picks/1
  # PATCH/PUT /match_picks/1.json
  def update
    respond_to do |format|
      if @match_pick.update(match_pick_params)
        format.html { redirect_to @match_pick, notice: 'Match pick was successfully updated.' }
        format.json { render :show, status: :ok, location: @match_pick }
      else
        format.html { render :edit }
        format.json { render json: @match_pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /match_picks/1
  # DELETE /match_picks/1.json
  def destroy
    @match_pick.destroy
    respond_to do |format|
      format.html { redirect_to match_picks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match_pick
      @match_pick = MatchPick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_pick_params
      params.require(:match_pick).permit(:userID, :matchID, :userPick, :result, :points, :closed)
    end
end
