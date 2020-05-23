class HealthcheckController < ActionController::Base
  def healthz
    render json: { message: 'Ok' },
           status: 200
  end
end
