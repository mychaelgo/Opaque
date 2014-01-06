<!--Katherine-->
<div class="col-md-12 container" style="margin-top:40px;background:rgba(255,255,255,0.5);padding:20px 5px">
    <!-- <div class="gambar">
	</div>
	-->
    <div class="col-md-3 col-md-offset-8">
        <!--login-->
        <jsp:include page="../view/login.jsp" flush="true" />
        <!-- end of login-->
        <!--Register-->
        <h4>New to Opaque? Sign Up</h4>
        <form class="form-horizontal" role="form" method="post" action="controller/doRegister.jsp">
            <div class="form-group">
                <div class="col-lg-12">
                    <input type="text" class="form-control" id="inputName1" name="inputName1" placeholder="Full Name">
                </div>
            </div>
            <div class="form-group">
                <div class=" col-lg-12">
                    <input type="text" class="form-control" id="inputFullName1" name="inputFullName1" placeholder="Full Name">
                </div>
            </div>
            <div class="form-group">
                <div class=" col-lg-12">
                    <input type="password" class="form-control" id="inputPassword1" name="inputPassword1" placeholder="Password">
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-offset-3 col-lg-10">
                    <button type="submit" class="btn btn-default btn-primary">Sign up for Opaque</button>
                </div>
            </div>
        </form>
        <!-- end of register-->
    </div>
</div>
<!--Katherine-->