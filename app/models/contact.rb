class Contact < ApplicationRecord
    #Associations
    belongs_to :kind
    has_many :phones
    has_one :address

    accepts_nested_attributes_for :phones, allow_destroy: true
    accepts_nested_attributes_for :address, update_only: true

    # def to_br
         
    #       { 
    #         name: self.name,
    #         email: self.email,
    #         birthdate: (I18n.l(self.birthdate) unless self.birthdate.blank?)
    #       }
    # end

#    def author
#        "João Matheus"
#    end
#
#   def kind_description
#        self.kind.description
#    end
#
#    def as_json(options = {})
#        super(
#            root: true,
#            methods: [:kind_description, :author],
#       )
#    end
     # def hello
     #   I18n.t('hello')
     # end

     # def i18n
     #   I18n.default_locale
     # end
end
