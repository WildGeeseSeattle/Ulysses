<% @codepage=65001 %>
<%
' Parse error formatting function
Function reportParseError(error)
  Dim s, i, r
  s = ""
  for i=1 to error.linepos-1
    s = s & " "
  next
  r = "<font face=Verdana size=2><font size=4>XML Error loading '" &_
    error.url & "'</font>" &_
    "<P><B>" & error.reason &_
    "</B></P></font>"
  if (error.line > 0) then
    r = r &  "<font size=3><XMP>" &_
      "at line " & error.line & ", character " & error.linepos &_
      "\n" & error.srcText &_
      "\n" & s & "^" &_
      "</XMP></font>"
  end if
  reportParseError = r
end Function

' Runtime error formatting function
Function reportRuntimeError(exception)
  reportRunTimeError "<font face=Verdana size=2><font size=4>XSL Runtime Error</font>" &_
    "<P><B>" & exception.description & "</B></P></font>"
End Function

' Set the source and stylesheet locations here

Function TransformDocument(srcXML, srcXSL) 
  Dim sourceFile, styleFile, source
  sourceFile = Server.MapPath(srcXML)
  styleFile = Server.MapPath(srcXSL)
  ' Load the XML 
  Set source = Server.CreateObject("Microsoft.XMLDOM")
  source.async = False
  source.load sourceFile
  ' Load the XSL
  Set  style = Server.CreateObject("Microsoft.XMLDOM")
  style.async = False
  style.load styleFile
  
  If (source.parseError.errorCode <> 0) Then
    result = reportParseError(source.parseError)
  ElseIf (style.parseError.errorCode <> 0) Then
    result = reportParseError(style.parseError)
  Else
    On Error Resume Next
    result = source.transformNode(style)
    If (err.number<>0) Then
      result = reportRuntimeError(exception)
    End If
  End If
  TransformDocument = result
End Function
%>

<%
Response.ContentType = "text/html"
Response.CharSet = "UTF-8"
' Response.Write( Now & "<br/>" ) 
Response.Write( TransformDocument("wandering-rocks.xml", "wandering-rocks.xsl"))
%>
