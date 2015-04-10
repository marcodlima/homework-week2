class Email
  def initialize(sub,hash)
      @subject = sub
      @date = hash[:date]
      @from = hash[:from]
   end

  def date
     @date
  end

  def from
     @from
  end

  def subject
     @subject
  end
end

class Mailbox
  def initialize(title,emails)
    @title = title
    @emails = emails
  end

  def title
    @title
  end

  def emails
    @emails
  end
end

class MailboxTextFormatter
  def initialize(mailbox)
    @mailbox = mailbox
  end

  def format
    puts "Mailbox: #{@mailbox.title}\n\n"
    puts line
    puts lineTitle
    puts line
    @mailbox.emails.each {|email| puts dataLine(email)}
    puts line
  end

  def cellSize
    a = 0
    arr = Array.new
    # size = emails[2].subject.length
    emails.each {|emails| if a < emails.date.length 
                            a = emails.date.length
                          end}
    arr << a + 2
    a = 0

    emails.each {|emails| if a < emails.from.length 
                            a = emails.from.length
                          end}
    arr << a + 2
    a = 0

    emails.each {|emails| if a < emails.subject.length 
                            a = emails.subject.length
                          end}
    arr << a + 2
  end

  def line
    lin = "+"
    #http://stackoverflow.com/questions/2296994/in-ruby-how-do-i-generate-a-long-string-of-repeated-text
    (1..cellSize[0]).each {|i| lin += "-"}
    lin += "+"
    (1..cellSize[1]).each {|i| lin += "-"}
    lin += "+"
    (1..cellSize[2]).each {|i| lin += "-"}
    lin += "+"
  end

  def lineTitle
    lin = "| "
    lin += "Date".ljust(cellSize[0] - 1)
    lin += "| "
    lin += "From".ljust(cellSize[1] - 1)
    lin += "| "
    lin += "Subject".ljust(cellSize[2] - 1)
    lin += "|"
  end

  def dataLine(email)
    lin = "| "
    lin += email.date.ljust(cellSize[0] - 1)
    lin += "| "
    lin += email.from.ljust(cellSize[1] - 1)
    lin += "| "
    lin += email.subject.ljust(cellSize[2] - 1)
    lin += "|"
  end


  def emails
    @mailbox.emails
  end
  

end

emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]
mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxTextFormatter.new(mailbox)

puts formatter.format