class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  def json_for_api
    self.as_json(only: %i[id title content])
  end

  def self.json_for_api(search: nil, page: 0, per_page: 10, paginate: true)
    next_page = false

    search_filter = ''
    unless search.nil?
      search_filter = <<~SQL
        WHERE articles.title ILIKE '%' || :search || '%'
      SQL
    end

    paginate_query = ''
    if !paginate.nil? && ActiveRecord::Type::Boolean.new.cast(paginate)
      paginate_query = <<~SQL
        LIMIT :limit
        OFFSET :offset
      SQL
    end

    query = <<~SQL
      SELECT
        id,
        title,
        content
      FROM articles
      #{search_filter}
      ORDER BY articles.created_at DESC NULLS LAST
      #{paginate_query}
    SQL

    articles = ActiveRecord::Base.connection.exec_query(
      ActiveRecord::Base.send(
        :sanitize_sql_array, [
          query,
          limit: per_page,
          offset: page * per_page,
          search: search,
        ]
      )
    ).to_a

    if articles.count == per_page
      next_page = true
    end

    {
      'current_page' => page,
      'articles' => articles,
      'next_page' => next_page,
    }
  end
end
