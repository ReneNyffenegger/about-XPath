[xml] $doc = @"
<root>
   <elem id='99'>ninety-nine</elem>
   <elem id='42'>forty-two</elem>
   <elem id='17'>seventeen</elem>
</root>
"@

$found = select-xml -xml $doc -xPath '/root/elem[@id="42"]'

$found.Node.InnerText
