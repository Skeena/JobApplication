class Search
  def execute(query:)
    return [] if query == ''
    Job.where('title like ? or location = ?', "%#{query}%", query)
  end
end