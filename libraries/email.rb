class Email
  
  def self.quote_request machine_id, id, comment

    body = ''
    body << "<p>Machine: #{machine_id}</p>"
    body << "<p>Order number: #{id}</p>"
    body << "<p>Comment: #{comment}</p>"

    Pony.mail(
      headers: { 'Content-Type' => 'text/html' },
      to: 'skip@tayloraid.com, cindy.maddox@dinamecsystems.com',
      from: 'no-reply@dinamecsystems.com',
      subject: 'Request for Parts Quote',
      body: body
    )
  end
  
  def self.respond name, company, email, phone, comment
    
    if params[:email_name] == ""

    body = ''
    body << "<p>Name: #{name}</p>"
    body << "<p>Company: #{company}</p>"
    body << "<p>Email: #{email}</p>"
    body << "<p>Phone: #{phone}</p>"
    body << "<p>Comment: #{comment}</p>"
    

    Pony.mail(
      headers: { 'Content-Type' => 'text/html' },
      to: 'skip@tayloraid.com, samantha.wilkins@dinamecsystems.com, drew.jones@dinamecsystems.com',
      from: 'no-reply@dinamecsystems.com',
      subject: 'Contact',
      body: body
    )
    
  end
  end
  
  def self.cleaning name, company, email, phone, description

    body = ''
    body << "<p>Name: #{name}</p>"
    body << "<p>Company: #{company}</p>"
    body << "<p>Email: #{email}</p>"
    body << "<p>Phone: #{phone}</p>"
    body << "<p>Description: #{description}</p>"

    Pony.mail(
      headers: { 'Content-Type' => 'text/html' },
      to: 'skip@tayloraid.com, samantha.wilkins@dinamecsystems.com, drew.jones@dinamecsystems.com',
      from: 'no-reply@dinamecsystems.com',
      subject: 'Request for Sample Parts Cleaning',
      body: body
    )
  end

end

