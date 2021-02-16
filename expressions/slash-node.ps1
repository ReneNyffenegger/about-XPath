[xml] $doc = @"
<root>
   <abc>one  </abc>
   <def>two  </def>
   <abc>three <xyz>nine</xyz> </abc>
</root>
"@

foreach ($node in (select-xml -xml $doc -xPath '/root/abc').node) {
  "$($node.InnerText) ($($node.InnerXml))"
}
#
#  one   (one  )
#  three nine (three <xyz>nine</xyz>)
