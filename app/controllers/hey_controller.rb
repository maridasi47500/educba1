class HeyController < ApplicationController
  def there
    render json: {heythere: Somecat.where(cat_id: params[:id])}.as_json, layout: false
  end
end
