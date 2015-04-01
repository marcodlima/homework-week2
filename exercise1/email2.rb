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

email = Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Ferdous" })

puts "Date:    #{email.date}"
puts "From:    #{email.from}"
puts "Subject: #{email.subject}"
