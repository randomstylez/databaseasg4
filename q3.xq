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
 for $a in doc("../premiere/Orders.xml")//Orders
 for $b in doc("../premiere/Customer.xml")//Customer
 where $b/CustomerNum = $a/CustomerNum
 let $c := doc("../premiere/OrderLine.xml")//OrderLine[OrderNum = $a/OrderNum]
 let $d  := doc("../premiere/OrderLine.xml")//OrderLine[OrderNum = $a/OrderNum]
 return
 <row>
 <Order number="{$a/OrderNum/string()}"/>
 <customer Name="{$b/CustomerName/string()}"/>
 <orderine LineItems="{count($c)}"/>
 <orderRevenue
   TotalAmount ="{ sum(
    for $i in $d
    let $x := $i/QuotedPrice * $i/NumOrdered
    return $x
  )
}"/>
 </row> 
}
</results>