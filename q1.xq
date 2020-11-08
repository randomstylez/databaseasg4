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
    $b in doc("../premiere/Rep.xml")//Rep[RepNum = $a/RepNum]
    let $c := doc("../premiere/Orders.xml")//Orders[CustomerNum = $a/CustomerNum]
    return
        <row>
          <customer Number="{$a/CustomerNum/string()}" Name="{$a/CustomerName/string()}" />
          <rep FirstName="{$b/FirstName/string()}" LastName="{$b/LastName/string()}"/>
          <Orders TotalOrders="{count($c)}"/>
        </row>
  }
</results>