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

emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]
mailbox = Mailbox.new("Ruby Study Group", emails)

mailbox.emails.each do |email|
  puts "Date:    #{email.date}"
  puts "From:    #{email.from}"
  puts "Subject: #{email.subject}"
  puts
end