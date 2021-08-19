<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="WebApplication1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="contentholder">
		<div class="cnthldr">
			<h1>About Us!</h1>
    <!*-------------About Us-------------*!>
		<section id="about">
		<div class="container">
			<div class="row">
			<div class="col-md-6">
				<h5>About us</h5>
				
					Our story is a long one, dating back to 1982 when SJS was formed by student associations across Aotearoa. By 1997 the government had backed us with funding and SJS opened over 20 offices country wide. In 2001, SJS launched online and began the shift to the digital service it is today.Head office moved from Dunedin to Wellington and a centralised contact centre was set up between 2009 and 2011. The following year all regional offices were closed and we became a fully digital service.Over the years SJS has been morphed by the times, but our hearts still lie in the same place. We began with the goal of alleviating student poverty, and although we may describe that differently now, the gist is still the same.Today our vision is to improve the lives of all New Zealanders by supporting tertiary students to develop the skills and will to drive the country’s economic, political and social prosperity.<br>
				<button type="button" class="btn btn-primary">Read More</button>
				</div>
				<!*-------------Progress Bar-------------*!>
				<div class="col-md-6">
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
					<div class="progress-bar bg-danger" role="progressbar" style="width: 50%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">50%</div>
					</div>
					</div>
					</div>
					</div>
		</section>
            <hr />
        </div>	
        
</asp:Content>
