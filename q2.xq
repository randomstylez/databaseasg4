(:Name: Joseph Pietroluongo
 Panther-ID: 5901749
 Course: COP 4722
 Assignment#: 4
 Due: Tue, Nov 3, 2020
 I hereby certify that this work is my own and none of
 it is the work of any other person.
 Signature: Joseph Pietroluongo
 :)
<results>
{
  for $a in doc("../premiere/Customer.xml")//Customer,
        $b in doc("../premiere/Customer.xml")//Customer
    where $b/RepNum = $a/RepNum and $a/CustomerName != $b/CustomerName and $a/CustomerNum < $b/CustomerNum
    return
         <pair>{$a/CustomerName/string()} - {$b/CustomerName/string()}</pair>      
}
</results>