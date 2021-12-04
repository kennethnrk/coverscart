<%
If NOT IsEmpty(Request.querystring("payment")) Then
    
    If Request.querystring("payment") = "COD" Then
        paymentmethod = "Cash On Delivery"  
        
    ElseIf Request.querystring("payment") = "CreditCard" Then
        paymentmethod = "Credit Card"  
        
    ElseIf Request.querystring("payment") = "DebitCard" Then
        paymentmethod = "Debit Card"  
        
    ElseIf Request.querystring("payment") = "UPI" Then
        paymentmethod = "UPI"  
        
    Else
        Response.Redirect "checkout.asp"
        Response.End
    End If

    
    If IsEmpty(Session("cart"))  Then
        Response.Redirect "cart.asp"
        Response.End
    ElseIf IsEmpty(Session("idforcheckout"))  Then
        Response.Redirect "login.asp"
        Response.End
    Else
        
        userid = Session("idforcheckout")

        dim cart
        cart = Session("cart")
        Dim total: total = 0
        Dim tax: tax = 0
        Dim i
        
        For Each i in cart
            total = total + i(3)*i(2)
        Next 
        tax = total*18/100
        finaltotal = total+tax
        
        set conn = Server.CreateObject("ADODB.Connection")
        conn.ConnectionString="DSN=dbforcoverscart"
        conn.Open

        set rsAdd = Server.CreateObject("ADODB.recordset")
        rsAdd.open "orderlist",conn,,2,2
        
        rsAdd.AddNew
        rsAdd("userid") = userid
        rsAdd("total") = finaltotal
        rsAdd("paymenttype") = paymentmethod
        rsAdd.Update

        rsAdd.close
        Set rsAdd=Nothing
        
        set rs = Server.CreateObject("ADODB.recordset")
        sql = "SELECT @@IDENTITY AS 'Identity'"
        rs.open sql,conn

        if rs.EOF then
            Response.Write("Error") 
        
        else
            last_id = rs(0)
            rs.close
            Set rs=Nothing
        End if

        For Each i in cart
            set rsAdd = Server.CreateObject("ADODB.recordset")
            rsAdd.open "orderdetails",conn,,2,2

            itemtotal = i(3)*i(2)
            image = i(0)
            item_name = i(1)
            qty = i(2)
            price = i(3)

            rsAdd.AddNew
            rsAdd("orderid") = last_id
            rsAdd("image") = image
            rsAdd("item") = item_name
            rsAdd("qty") = qty
            rsAdd("price") = price
            rsAdd("totalprice") = itemtotal

            rsAdd.Update

            rsAdd.close
            Set rsAdd=Nothing
        Next 
        
        conn.close
        Set conn=Nothing

        Session.Contents.Remove("cart")
        
%>
    <!--#include file="top.asp"-->
        <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(images/bg/4.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="bradcaump__inner">
                                <nav class="bradcaump-inner">
                                  <a class="breadcrumb-item" href="index.asp">Home</a>
                                  <span class="brd-separetor"><i class="zmdi zmdi-chevron-right"></i></span>
                                  <span class="breadcrumb-item active">checkout</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <h2 style="text-align: center; padding-top: 20vh; padding-bottom: 20vh;">Thank You For Shopping With Us!!</h2>
                    </div>
                </div>
        </div>
    <!--#include file="footer.asp"-->
<%
        Response.End
    End If
Else
    Response.Redirect "checkout.asp"
    REsponse.End
End If
%>