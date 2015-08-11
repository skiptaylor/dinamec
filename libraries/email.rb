class Email
  
  def self.quote_request comment

    body = ''
    body << "<h4>Request from ?</h4>"
    body << "<p>Machine: </p>"
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
