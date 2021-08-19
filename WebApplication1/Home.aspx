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
				<h1>About us</h1>
				
					<h3>WHY EMPLOYERS CHOOSE US</h3>
With NZ Labour Hire you get the convenience, immediacy and flexibility of taking on staff exactly when you want them. It’s easy, too, with one simple invoice a week that takes care of everything from PAYE to holiday pay and sickness cover.

But with us there’s something more. It shows in our approach and the attention to detail that means you get the right person for the job, right first time.

<br /><h3>RIGOROUS SCREENING</h3>
Our ability to find the right candidate for your job requirement begins even before the interview stage (something we do with every potential candidate, unlike some other companies).

The advertising we undertake is not the kind of trawling that hauls in database fillers indiscriminately. Deservedly, that’s the kind of thing that gets a bad name amongst candidates and clients alike. Our advertising is expertly designed to attract the best and leave the rest, so we begin with a head start in new recruitment.<br>
				<button type="button" class="btn btn-primary">Read More</button>
				</div>
				<!*-------------Progress Bar-------------*!>
				<div class="col-md-6" data-aos="fade-left">
					<p>Variety Of Labours</p>
					<div class="progress">
					<div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">100%</div>
					</div>
					
				<p>Number Of Labours</p>
					<div class="progress">
					<div class="progress-bar bg-danger" role="progressbar" style="width: 75%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">75%</div>
					</div>
					
			<p>Customer Satisfaction</p>
					<div class="progress">
					<div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">100%</div>
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
