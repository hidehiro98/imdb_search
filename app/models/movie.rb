class Movie < ApplicationRecord
  belongs_to :director

  include PgSearch
  pg_search_scope :search_by_title_and_syllabus, against: [ :title, :syllabus ]

end
