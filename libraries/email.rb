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
  
  

end

