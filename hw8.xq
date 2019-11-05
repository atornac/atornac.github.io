xquery version "1.0";


for $title in doc("hw8.xml")/bookstore/book
where  $title/price<30.00
return $title/title