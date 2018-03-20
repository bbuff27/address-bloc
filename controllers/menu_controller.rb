require_relative "../models/address_book"

class MenuController
    attr_reader :address_book

    def initialize
        @address_book = address_book
    end

    
end