<%


Function add_to_cart(image, name, qty, price)
    If IsEmpty(Session("cart"))  Then
        Dim temp_cart(4)
        temp_cart(0) = image
        temp_cart(1) = name
        temp_cart(2) = qty
        temp_cart(3) = price
        main_cart = Array(temp_cart)
        Session("cart") = main_cart
    Else
        
        dusted = 0
        check_cart =  Session("cart")
        For  i = 0 to UBound(check_cart)
            If check_cart(i)(1) = name Then
                check_cart(i)(2) = CInt(check_cart(i)(2))+qty
                dusted = 1
                Session("cart") = check_cart
                Exit For
            End If
            
        Next
        If dusted = 0 Then
            'if no matches'
            Dim tempy_cart(4)
            tempy_cart(0) = image
            tempy_cart(1) = name
            tempy_cart(2) = qty
            tempy_cart(3) = price
            
            new_cart = Session("cart")
            new_cart = AddItem(new_cart, tempy_cart)
            Session("cart") = new_cart
        End If
    End If
End Function

Function AddItem(arr, val)
    ReDim Preserve arr(UBound(arr) + 1)
    arr(UBound(arr)) = val
    AddItem = arr
End Function

If Request.Form.Count > 0 Then
    If IsEmpty(request.form("type")) Then
        dim name: name = request.form("name")
        dim image: image = request.form("image")
        dim qty: qty = request.form("qty")
        dim price: price = request.form("price")
        Call add_to_cart(image,name,qty,price)
    Else
        name = request.form("name")
        Call remove_cart(name)
    End If
End If

Function remove_cart(name)
     check_cart =  Session("cart")
     new_cart = Array()
        For  i = 0 to UBound(check_cart)
            
            If check_cart(i)(1) <> name Then
                If IsEmpty(new_cart) Then
                    new_cart = Array(check_cart(i))
                Else
                    new_cart = AddItem(new_cart, check_cart(i))
                End If
            
            End If
            
        Next
    Session("cart") = new_cart
    If UBound(new_cart) = -1 Then
        Session.Abandon
    End If
End Function

If IsEmpty(Session("cart"))  Then
    

Else
    Response.Write(UBound(Session("cart")))

    Dim cart: cart = Session("cart")
    
    Dim i
    For Each i in cart 
        Dim j
        For Each j in i 
            Response.Write(j & "<br>")
        Next
    Next
End If
%>