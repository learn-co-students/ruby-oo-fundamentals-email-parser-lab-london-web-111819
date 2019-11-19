# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse
        arr = email_addresses.split(' ')
        arr2 = arr.map do |email|
            email.split(',')
        end
        arr2.flatten.uniq
    end
end