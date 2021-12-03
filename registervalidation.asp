<html>
    <body>
        <%
        name = Request.Form("registername")
        address = Request.Form("registeraddress")
        mobile = Request.Form("registermobile")
        email = Request.Form("registeremail")
        password = Request.Form("registerpassword")
        repassword = Request.Form("registerrepassword")

        Session("nameforcheckout") = ""
        Session("addressforcheckout") = ""
        Session("mobileforcheckout") = ""
        Session("emailforcheckout") = ""

        set conn = Server.CreateObject("ADODB.Connection")
        conn.ConnectionString="DSN=dbforcoverscart"
        conn.Open

        set rs = Server.CreateObject("ADODB.recordset")
        sql = "SELECT * FROM userdetails where useremail='"&email&"';"
        rs.open sql,conn

        set rsAdd = Server.CreateObject("ADODB.recordset")
        rsAdd.open "userdetails",conn,,2,2
        
        if rs.EOF then
            if password = repassword then 
                Session("nameforcheckout") = name
                Session("addressforcheckout") = address
                Session("mobileforcheckout") = mobile
                Session("emailforcheckout") = email

                rsAdd.AddNew
                rsAdd("username") = name
                rsAdd("useraddress") = address
                rsAdd("usermobile") = mobile
                rsAdd("useremail") = email
                rsAdd("userpassword") = password
                rsAdd.Update

                Response.Redirect "registersuccess.asp"
            else 
                Response.Redirect "passworderror.asp"
            end if
        else
            Response.Redirect "registererror.asp"
        end if

        rsAdd.close
        Set rsAdd=Nothing
        rs.close
        Set rs=Nothing
        conn.close
        Set conn=Nothing
        %>
    </body>
</html>