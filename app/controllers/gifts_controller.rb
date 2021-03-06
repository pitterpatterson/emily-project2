class GiftsController < OpenReadController
  # before_action :set_gift, only: [:show]
  before_action :set_user_gift, only: %i[show update destroy]

  # GET /gifts
  def index
    if current_user.nil?
      @gifts = Gift.all
    else
      @gifts = current_user.gifts.all
    end

    render json: @gifts
  end

  # GET /gifts/1
  def show
    render json: @gift
  end

  # POST /gifts
  def create
    @gift = current_user.gifts.build(gift_params)

    if @gift.save
      render json: @gift, status: :created, location: @gift
    else
      render json: @gift.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gifts/1
  def update
    if @gift.update(gift_params)
      render json: @gift
    else
      render json: @gift.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gifts/1
  def destroy
    @gift.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_gift
    @gift = Gift.find(params[:id])
  end

  def set_user_gift
    @gift = current_user.gifts.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def gift_params
    params.require(:gift).permit(:name, :price, :where_to_find, :notes)
  end
end
