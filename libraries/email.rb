class Email
  
  def self.quote_request po_number, comment

    body = ''
    body << "<h4>Request for Parts Quote</h4>"
    body << "<p>School Name: #{po_number}</p>"
    body << "<p>#{comment}</p>"

    Pony.mail(
      headers: { 'Content-Type' => 'text/html' },
      to: 'tayloraid@gmail.com',
      from: 'no-reply@dinamecsystems.com',
      subject: 'Request for Parts Quote',
      body: body
    )
  end

end
