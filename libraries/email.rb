class Email
  
  def self.quote_request id, comment

    body = ''
    body << "<p>Machine: </p>"
    body << "<p>Order number: #{id}</p>"
    body << "<p>Comment: #{comment}</p>"

    Pony.mail(
      headers: { 'Content-Type' => 'text/html' },
      to: 'tayloraid@gmail.com',
      from: 'no-reply@dinamecsystems.com',
      subject: 'Request for Parts Quote',
      body: body
    )
  end

end