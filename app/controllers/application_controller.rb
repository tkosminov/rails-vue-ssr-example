class ApplicationController < ActionController::Base
  rescue_from ::ActiveRecord::RecordInvalid do |exception|
    handle_error(exception, 400)
  end

  rescue_from ::ActiveRecord::NotNullViolation do |exception|
    handle_error(exception, 400)
  end

  rescue_from ::ActiveRecord::RecordNotUnique do |exception|
    handle_error(exception, 400)
  end

  rescue_from ::ActionController::ParameterMissing do |exception|
    handle_error(exception, 400)
  end

  rescue_from ::ActiveRecord::RecordNotFound do |exception|
    handle_error(exception, 404)
  end

  rescue_from ::ActiveRecord::StatementInvalid do |exception|
    handle_error(exception, 500)
  end

  rescue_from ::ActiveRecord::RecordNotDestroyed do |exception|
    handle_error(exception, 424)
  end

  rescue_from ::StandardError do |exception|
    handle_error(exception, 400)
  end

  private

  def handle_error(exception, status)
    Rails.logger.error(exception.message)
    Rails.logger.error(exception.backtrace.join("\n"))

    if Rails.env.development?
      render json: { error: exception.message,
                     data: { message: exception.message, backtrace: exception.backtrace }, },
             status: status
    else
      render json: { error: exception.message },
             status: status
    end
  end
end
