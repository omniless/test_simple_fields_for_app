class SubStuffsController < ApplicationController
  before_action :set_sub_stuff, only: [:show, :edit, :update, :destroy]

  # GET /sub_stuffs
  # GET /sub_stuffs.json
  def index
    @sub_stuffs = SubStuff.all
  end

  # GET /sub_stuffs/1
  # GET /sub_stuffs/1.json
  def show
  end

  # GET /sub_stuffs/new
  def new
    @sub_stuff = SubStuff.new
  end

  # GET /sub_stuffs/1/edit
  def edit
  end

  # POST /sub_stuffs
  # POST /sub_stuffs.json
  def create
    @sub_stuff = SubStuff.new(sub_stuff_params)

    respond_to do |format|
      if @sub_stuff.save
        format.html { redirect_to @sub_stuff, notice: 'Sub stuff was successfully created.' }
        format.json { render :show, status: :created, location: @sub_stuff }
      else
        format.html { render :new }
        format.json { render json: @sub_stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_stuffs/1
  # PATCH/PUT /sub_stuffs/1.json
  def update
    respond_to do |format|
      if @sub_stuff.update(sub_stuff_params)
        format.html { redirect_to @sub_stuff, notice: 'Sub stuff was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_stuff }
      else
        format.html { render :edit }
        format.json { render json: @sub_stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_stuffs/1
  # DELETE /sub_stuffs/1.json
  def destroy
    @sub_stuff.destroy
    respond_to do |format|
      format.html { redirect_to sub_stuffs_url, notice: 'Sub stuff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_stuff
      @sub_stuff = SubStuff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_stuff_params
      params.require(:sub_stuff).permit(:name)
    end
end
