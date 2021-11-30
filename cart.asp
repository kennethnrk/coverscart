<!--#include file="top.asp"-->
<%




%>
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
                                  <span class="breadcrumb-item active">shopping cart</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        <!-- cart-main-area start -->
        <div class="cart-main-area ptb--100 bg__white">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <%
                            If IsEmpty(Session("cart"))  Then
                        %>
                            <h2> Cart is Empty</h2>
                        <%
                            Response.End
                            Else
                                
                                dim cart
                                cart = Session("cart")
                        %>   
                        <form action="#">               
                            <div class="table-content table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="product-thumbnail">products</th>
                                            <th class="product-name">name of products</th>
                                            <th class="product-price">Price</th>
                                            <th class="product-quantity">Quantity</th>
                                            <th class="product-subtotal">Total</th>
                                            <th class="product-remove">Remove</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% 
                                            Dim i
                                            For Each i in cart  
                                        %>
                                        <tr>
                                            <td class="product-thumbnail"><a href="#"><img src="<% Response.Write(i(0)) %>" alt="product img" /></a></td>
                                            <td class="product-name"><a href="#"><% Response.Write(i(1)) %></a></td>
                                            <td class="product-price"><span class="amount">₹<% Response.Write(i(3)) %></span></td>
                                            <td class="product-quantity"><% Response.Write(i(2)) %></td>
                                            <td class="product-subtotal">₹<% Response.Write(i(3)*i(2)) %></td>
                                            <td class="product-remove"><a onclick="rmov_cart('<% Response.Write(i(1)) %>')"><i class="icon-trash icons"></i></a></td>
                                        </tr>
                                        <%
                                            Next
                                        %>
                                    </tbody>
                                </table>
                            </div>
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="buttons-cart--inner">
                                        <div class="buttons-cart">
                                            <a href="index.asp">Continue Shopping</a>
                                        </div>
                                        <div class="buttons-cart checkout--btn">
                                            
                                            <a href="checkout.asp">checkout</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form> 
                        <% End If %>
                    </div>
                </div>
            </div>
        </div>
        <!-- cart-main-area end -->
        <!-- End Banner Area -->
<!--#include file="footer.asp"-->