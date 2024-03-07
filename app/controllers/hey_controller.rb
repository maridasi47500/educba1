class HeyController < ApplicationController
  def there
    render json: Somecat.where(id: params[:id]).as_json, layout: false
  end
end
