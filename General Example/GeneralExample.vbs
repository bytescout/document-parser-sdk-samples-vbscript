'*******************************************************************************************'
'                                                                                           '
' Download Free Evaluation Version From:     https://bytescout.com/download/web-installer   '
'                                                                                           '
' Also available as Web API! Free Trial Sign Up: https://secure.bytescout.com/users/sign_up '
'                                                                                           '
' Copyright © 2017-2018 ByteScout Inc. All rights reserved.                                 '
' http://www.bytescout.com                                                                  '
'                                                                                           '
'*******************************************************************************************'


' This example demonstrates invoice data parsing to JSON and YAML formats.

inputDocument1 = "..\..\DigitalOcean.pdf"
inputDocument2 = "..\..\AmazonAWS.pdf"

' Create InvoiceParser object
Set invoiceParser = CreateObject("Bytescout.InvoiceParser.InvoiceParser")
invoiceParser.RegistrationName = "demo"
invoiceParser.RegistrationKey = "demo"

' Parse invoice data in JSON format
invoiceParser.ParseDocument inputDocument1, "output1.json", 0 ' 0 = OutputFormat.JSON

' Parse invoice data in YAML format
invoiceParser.ParseDocument inputDocument1, "output2.yaml", 1 ' 1 = OutputFormat.YAML

WScript.Echo "Parsed data saved as 'output1.json' and 'output2.yaml'."

Set invoiceParser = Nothing

