class Api::V0::ArticlesController < ApplicationController
  def index
    page = params[:page].to_i

    per_page = params[:per_page].to_i
    unless per_page.positive?
      per_page = 10
    end

    render json: ::Article.json_for_api(search: params[:search],
                                        page: page,
                                        per_page: per_page,
                                        paginate: params[:paginate])
  end

  def show
    article = ::Article.find(params[:id])

    render json: article.json_for_api()
  end

  def create
    article = ::Article.create!(save_params())

    render json: article.json_for_api()
  end

  def update
    article = ::Article.find(params[:id])

    article.update!(save_params())

    render json: article.json_for_api()
  end

  def destroy
    article = ::Article.find(params[:id])

    article.destroy!()

    render json: article.json_for_api()
  end

  private

  def save_params
    params.require(:article)
          .permit(:id, :title, :content)
          .reject { |_, v| v.nil? }
  end
end
