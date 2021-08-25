[xml] $doc = @"
<root>
   <item id='1'>
      <name>foo</name>
      <value>42</value>
   </item>

   <item id='2'>
      <name>bar</name>
      <value>99</value>
   </item>

   <item id='3'>
      <name>baz</name>
      <value>7</value>
   </item>

</root>
"@

$item_bar = select-xml -xml $doc -xPath "//item[name='bar']"

write-host "The value of the item whose name is bar is $($item_bar.node.value)"
