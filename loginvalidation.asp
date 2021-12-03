<html>
    <body>
        <%
        email = Request.Form("loginemail")
        password = Request.Form("loginpassword")

        set conn = Server.CreateObject("ADODB.Connection")
        conn.ConnectionString="DSN=dbforcoverscart"
        conn.Open

        set rs = Server.CreateObject("ADODB.recordset")
        sql = "SELECT userpassword FROM userdetails where useremail=`email`;"
        rs.open sql,conn
        
        do until rs.EOF
            for each x in rs.Fields 
                if password = x.value then
                    Response.write(x.value)
                end if
            next
            rs.MoveNext
        loop

        rs.close
        Set rs=Nothing
        conn.close
        Set conn=Nothing
        %>
    </body>
</html>