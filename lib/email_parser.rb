# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'
class EmailAddressParser
   
    def initialize(email_addresses)
        @email_addresses = email_addresses
    end
    attr_accessor :parse

    def parse
        delimiters = [',', ' ']
        emails_splitted = @email_addresses.split(Regexp.union(delimiters))
        emails_splitted = emails_splitted.reject { |each_entry_in_array| each_entry_in_array.empty? }
        p emails_splitted.uniq
    end
    
end

email_addresses = "john@doe.com, person@somewhere.org basri@dnm.com"
parser = EmailAddressParser.new(email_addresses)
parser.parse