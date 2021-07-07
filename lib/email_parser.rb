# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end


    def parse
        email_list = @emails.gsub(",", " ")
        split_emails = email_list.split(' ')
        return split_emails.uniq
    end
    
end     

 
 