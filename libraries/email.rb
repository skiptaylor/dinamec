class Email
  
  
  def self.respond name, company, email, phone, comment

    body = ''
    body << "<p>Name: #{name}</p>"
    body << "<p>Company: #{company}</p>"
    body << "<p>Email: #{email}</p>"
    body << "<p>Phone: #{phone}</p>"
    body << "<p>Comment: #{comment}</p>"

    Pony.mail(
      headers: { 'Content-Type' => 'text/html' },
      to: 'skip@tayloraid.com',
      from: 'no-reply@dinamecsystems.com',
      subject: 'Contact',
      body: body
    )
  end
  

end

