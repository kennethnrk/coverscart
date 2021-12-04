<html>
    <body>
        <%
        email = Request.Form("loginemail")
        password = Request.Form("loginpassword")
        
        Session("nameforcheckout") = ""
        Session("addressforcheckout") = ""
        Session("mobileforcheckout") = ""
        Session("emailforcheckout") = ""
        Session("idforcheckout") = ""

        set conn = Server.CreateObject("ADODB.Connection")
        conn.ConnectionString="DSN=dbforcoverscart"
        conn.Open

        set rs = Server.CreateObject("ADODB.recordset")
        sql = "SELECT * FROM userdetails where useremail='"&email&"';"
        rs.open sql,conn
        
        if rs.EOF then
            Response.Redirect "loginerror.asp"
        else 
            if password = rs("userpassword") then
                Session("nameforcheckout") = rs("username")
                Session("addressforcheckout") = rs("useraddress")
                Session("mobileforcheckout") = rs("usermobile")
                Session("emailforcheckout") = rs("useremail")
                Session("idforcheckout") =  rs("ID")
                Response.Redirect "loginsuccess.asp"
            else 
                Response.Redirect "loginerror.asp"
            end if
        end if

        rs.close
        Set rs=Nothing
        conn.close
        Set conn=Nothing
        %>
    </body>
</html>