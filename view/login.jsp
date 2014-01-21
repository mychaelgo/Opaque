<!--    Added by GO-->
<form class="form-horizontal" role="form" method="post" action="controller/doLogin.jsp">
    <div class="form-group">
        <div class="col-lg-12">
            <input type="text" name="username" class="form-control" id="username" placeholder="Username">
        </div>
    </div>
    <div class="form-group">
        <div class=" col-lg-12">
            <input name="password" type="password" class="form-control" id="passwors" placeholder="Password">
        </div>
    </div>
    <!-- Alert ke User-->
    <%
        if(request.getParameter("err") != null){
            out.print(request.getParameter("err"));
        }   
    %>
        
    <div class="form-group">
        <div class="col-lg-12">
            <div class="checkbox">
                <label>
                    <input type="checkbox" name="rememerme">Remember me
                    <a href="#" class="col-lg-offset-1">Forgot Password ?</a>
                </label>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-lg-offset-4 col-lg-10">
            <input type="submit" name="submit" value="Sign in" class="btn btn-default btn-default">
        </div>
    </div>
</form>
<!--    Added by GO-->