class Email
  def initialize(sub,dat,fr)
      @subject = sub
      @date = dat
      @from = fr
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

email = Email.new("Homework this week", "2014-12-01", "Ferdous")

puts "Date:    #{email.date}"
puts "From:    #{email.from}"
puts "Subject: #{email.subject}"
