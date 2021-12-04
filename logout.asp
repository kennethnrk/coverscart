<%
    If NOT IsEmpty(Session("nameforcheckout"))  Then
        Session.Contents.Remove("nameforcheckout")
        Session.Contents.Remove("addressforcheckout")
        Session.Contents.Remove("mobileforcheckout")
        Session.Contents.Remove("emailforcheckout")
        Session.Contents.Remove("idforcheckout")
    End If
    Response.Redirect "login.asp"
%>

