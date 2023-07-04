class Vendedor < ApplicationRecord
    include PgSearch::Model

    pg_search_scope :search_full_text, against: {
        name: 'A',
        mail: 'B'
      }


      pg_search_scope :search_anidado, against: {
        name: 'A',
        mail: 'B'
      } 

    belongs_to :manager
    belongs_to :office

    

end
