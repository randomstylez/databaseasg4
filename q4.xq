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
 for $a in doc("../premiere/Rep.xml")//Rep
 let $b := doc("../premiere/Customer.xml")//Customer
 let $c := doc("../premiere/Orders.xml")//Orders
 let $d := doc("../premiere/OrderLine.xml")//OrderLine
 

 
 return
 <rep>
 <rep repnum="{$a/RepNum/string()}" FirstName="{$a/FirstName/string()}" LastName="{$a/LastName/string()}"/>
 
  {
    for $b in doc("../premiere/Customer.xml")//Customer
    where $a/RepNum = $b/RepNum
    return
        <customer
          name="{ $b/CustomerName }" 
      />}
     <Revenue
   total ="{ sum(
    for $i in $d
    let $x := $i/QuotedPrice * $i/NumOrdered
    return $x
  )
}"/>
       

</rep>
}
</results>