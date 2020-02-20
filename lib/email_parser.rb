
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'
class EmailAddressParser

    attr_accessor :emails

   

    def initialize(emails)
        @emails = emails

    end

   def parse
    splitted_emails = @emails.split(" ")

    sanitised_emails = splitted_emails.map {|email|
        email.gsub(',', '')
    }
    
    sanitised_emails.uniq
   end


end





