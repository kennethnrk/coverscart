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
        <!-- cart-main-area start -->
        <div class="checkout-wrap ptb--100">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="checkout__inner">
                            <div class="accordion-list">
                                <div class="accordion">
                                    <div class="accordion__title">
                                        Checkout Method
                                    </div>
                                    <div class="accordion__body">
                                        <%
                                            if NOT IsEmpty(Session("nameforcheckout")) Then
                                            
                                                %><h2 style="text-align: center;">Logged in as <%Response.Write(Session("nameforcheckout"))%></h2>
                                                <%  
                                                %><h4 style="text-align: center;">Not <%Response.Write(Session("nameforcheckout"))%>?<a href="<%Response.Write("logout.asp")%>"><u>Logout?</u></a> </h4>
                                    </div>            
                                                <%  
                                            else
                                                %><h2 style="text-align: center;"><a href="<%Response.Write("login.asp")%>">Login/Register</a> </h2>
                                    </div>
                                                <%
                                            End If
                                        %>
                                    
                                <%
                                    If NOT IsEmpty(Session("nameforcheckout")) Then
                                %>                
                                    <div class="accordion__title">
                                        payment information
                                    </div>
                                    <div class="accordion__body">
                                        <div class="paymentinfo">
                                            <div class="single-method">
                                                <a href="checkoutfunctions.asp?payment=COD"><i class="zmdi zmdi-long-arrow-right"></i>Cash On Delivery</a>
                                            </div>
                                            <div class="single-method">
                                                <a href="checkoutfunctions.asp?payment=CreditCard" ><i class="zmdi zmdi-long-arrow-right"></i>Credit Card</a>
                                            </div>
                                            <div class="single-method">
                                                <a href="checkoutfunctions.asp?payment=DebitCard" ><i class="zmdi zmdi-long-arrow-right"></i>Debit Card</a>
                                            </div>
                                            <div class="single-method">
                                                <a href="checkoutfunctions.asp?payment=UPI" ><i class="zmdi zmdi-long-arrow-right"></i>UPI</a>
                                            </div>
                                        </div>
                                    </div>
                                <%
                                    End If
                                %>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="order-details">
                            <h5 class="order-details__title">Your Order</h5>
                            <div class="order-details__item">
                                <%
                                    If IsEmpty(Session("cart"))  Then
                                %>
                                    <script> 
                                        window.location.replace("cart.asp");
                                    </script>
                                <%
                                    Response.End
                                    Else
                                        
                                        dim cart
                                        cart = Session("cart")

                                        Dim total: total = 0
                                        Dim tax: tax = 0
                                        Dim i
                                        For Each i in cart
                                        total = total + i(3)*i(2)
                                        name = Left(i(1),20)
                                %>   

                                <div class="single-item">
                                    <div class="single-item__thumb">
                                        <img src="<% Response.Write(i(0)) %>" alt="ordered item">
                                    </div>
                                    <div class="single-item__content">
                                        <a href="#"><% Response.Write(name) %></a>
                                        <span class="price">₹<% Response.Write(i(3)*i(2)) %></span>
                                    </div>
                                    <div class="single-item__remove">
                                        <a onclick="rmov_cart('<% Response.Write(i(1)) %>')"><i class="zmdi zmdi-delete"></i></a>
                                    </div>
                                </div>
                               <%       
                                        Next 
                                        tax = total*18/100
                               %>
                            </div>
                            <div class="order-details__count">
                                <div class="order-details__count__single">
                                    <h5>sub total</h5>
                                    <span class="price">₹<% Response.Write(total) %></span>
                                </div>
                                <div class="order-details__count__single">
                                    <h5>Tax</h5>
                                    <span class="price">₹<% Response.Write(tax) %></span>
                                </div>
                            </div>
                            <div class="ordre-details__total">
                                <h5>Order total</h5>
                                <span class="price">₹<% Response.Write(total+tax) %></span>
                            </div>
                            <% End If %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- cart-main-area end -->
<!--#include file="footer.asp"-->