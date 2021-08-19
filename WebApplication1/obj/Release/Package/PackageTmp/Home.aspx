<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.WebForm1" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!*------------Background Image-------------*!>
		<section id="bgimg">
		<img src="Images/georgie-cobbs-459520-unsplash.jpg"/>
	<div class="slider1">
		<h1 style="font-family: fantasy">Welcome to Labour Hire!<br />
            <button type="button" class="btn btn-outline-danger"  ><a href="Registraition.aspx">Join Us!</a></button></h1>
		
		
		</div>
             <style>
                .slider1 h1 {
   
    padding-top: 0px !important;
    position: relative;
    top:40px;
    left:0;
    padding-top: 200px !important;
    
}
                 center {
                 margin-top:50px !important;
                 }
                #bgimg img {
                width:100%;
                position:absolute;
                
                
                }
            </style>
			</section>
		
 
				<!*-------------About Us-------------*!>
		<section id="about">
		<div class="container">
			<div class="row">

                <style>
                    #about .row {
                       
                    margin-top:150px !important;
                    }
                </style>
			<div class="col-md-6" data-aos="fade-right">
				<h5>About us</h5>
				
					Our story is a long one, dating back to 1982 when SJS was formed by student associations across Aotearoa. By 1997 the government had backed us with funding and SJS opened over 20 offices country wide. In 2001, SJS launched online and began the shift to the digital service it is today.Head office moved from Dunedin to Wellington and a centralised contact centre was set up between 2009 and 2011. The following year all regional offices were closed and we became a fully digital service.Over the years SJS has been morphed by the times, but our hearts still lie in the same place. We began with the goal of alleviating student poverty, and although we may describe that differently now, the gist is still the same.Today our vision is to improve the lives of all New Zealanders by supporting tertiary students to develop the skills and will to drive the country’s economic, political and social prosperity.<br>
				<button type="button" class="btn btn-primary">Read More</button>
				</div>
				<!*-------------Progress Bar-------------*!>
				<div class="col-md-6" data-aos="fade-left">
					<p>Variety Of Labours</p>
					<div class="progress">
					<div class="progress-bar bg-danger" role="progressbar" style="width: 60%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">100%</div>
					</div>
					
				<p>Number Of Labours</p>
					<div class="progress">
					<div class="progress-bar bg-danger" role="progressbar" style="width: 75%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">75%</div>
					</div>
					
			<p>Customer Satisfaction</p>
					<div class="progress">
					<div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">50%</div>
					</div>
					</div>
					</div>
					</div>
		</section>
		<hr>
		
		<!*-------------Featured-------------*!>
		<section id="contentholder">
		<div class="cnthldr">
			<h1>Featured!</h1>
			<div class="card-group">
  <div class="card" data-aos="fade-left" >
    <img src="Images/American_Actor_Chris_Pratt_HD_Wallpapers.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">AKSHAY KUMAR</h5>
		<h6>ELECTRICIAN</h6>
      <p class="card-text">Hi i am an energetic worker and i have 3 years experience and i am available all day from 9.00 am - 6 pm </p>
      <button type="button" class="btn btn-primary">Book Now!</button>
    </div>
  </div>
  <div class="card"data-aos="fade-up">
    <img src="Images/Chris_Hemsworth_Hollywood_Film_Actor_Wallpaper.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title" >MARTIN</h5>
		<h6>PLUMBER</h6>
      <p class="card-text">Hi i am an energetic worker and i have 3 years experience and i am available all day from 9.00 am - 6 pm .</p>
		<button type="button" class="btn btn-primary" >Book Now!</button>
    </div>
  </div>
  <div class="card" data-aos="fade-right">
    <img src="Images/Six_Pack_Body_Abs_of_Dwayne_Johnson_Wallpaper.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">ANDREW</h5>
		<h6>CARPENTER</h6>
      <p class="card-text">Hi i am an energetic worker and i have 3 years experience and i am available all day from 9.00 am - 6 pm </p>
      <button type="button" class="btn btn-primary">Book Now!</button>
    </div>
  </div>
</div>
</div>
</section>

     <script>
AOS.init({
  duration: 1200,
        })
    </script>

</asp:Content>
