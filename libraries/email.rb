class Email
  
  def self.quote_request machine_id, id, comment

    body = ''
    body << "<p>Machine: #{machine_id}</p>"
    body << "<p>Order number: #{id}</p>"
    body << "<p>Comment: #{comment}</p>"

    Pony.mail(
      headers: { 'Content-Type' => 'text/html' },
      to: 'skip@tayloraid.com',
      from: 'no-reply@dinamecsystems.com',
      subject: 'Request for Parts Quote',
      body: body
    )
  end
  
  def self.contact name, company, email, phone, comment

    body = ''
    body << "<p>Name: #{contct.name}</p>"
    body << "<p>Company: #{contct.company}</p>"
    body << "<p>Email: #{contct.email}</p>"
    body << "<p>Phone: #{contct.phone}</p>"
    body << "<p>Comment: #{contct.comment}</p>"

    Pony.mail(
      headers: { 'Content-Type' => 'text/html' },
      to: 'skip@tayloraid.com',
      from: 'no-reply@dinamecsystems.com',
      subject: 'Contact',
      body: body
    )
  end
  
  def self.cleaning name, company, email, phone, description

    body = ''
    body << "<p>Name: #{contct.name}</p>"
    body << "<p>Company: #{contct.company}</p>"
    body << "<p>Email: #{contct.email}</p>"
    body << "<p>Phone: #{contct.phone}</p>"
    body << "<p>Description: #{contct.description}</p>"

    Pony.mail(
      headers: { 'Content-Type' => 'text/html' },
      to: 'skip@tayloraid.com',
      from: 'no-reply@dinamecsystems.com',
      subject: 'Request for Sample Parts Cleaning',
      body: body
    )
  end

end

