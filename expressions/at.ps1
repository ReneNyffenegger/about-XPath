[xml] $doc = @"
<root>
   <foo id='1'>one</foo>
   <bar id='2'>two</bar>
   <baz id='3'>baz</baz>
</root>
"@

$found = select-xml -xml $doc -xPath '/root/bar/@id'
write-host "The id is $($found.node.Value)"
