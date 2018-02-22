<%@ Page Title="" Language="C#" MasterPageFile="~/Tissue_Admin.Master" AutoEventWireup="true" CodeBehind="NewTissue.aspx.cs" Inherits="TissueTrack.NewTissue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">   
            <div class="row mt">
          		<div class="col-lg-12">     
          			<div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> New Tissue</h4>
                      <form class="form-inline" role="form">
                      <table class="table" align="left">
                      <tr>
                      <td valign="middle">
                       Tissue Code
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                      <asp:TextBox ID="txttisscode" runat="server" CssClass="form-control" style="width:325px !important;" />                           
                          </div>
                      </td>
                      <td valign="middle">
                       Product Description
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                       <asp:TextBox ID="txtdes" runat="server" CssClass="form-control" style="width:325px !important;" />                              
                          </div>
                      </td>
                      </tr>
                        <tr>
                      <td valign="middle">
                       Tissue Lot
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                       <asp:TextBox ID="txtlot" runat="server" CssClass="form-control" style="width:325px !important;" />    
                       </div>
                      </td>
                      <td valign="middle">
                       Catalog
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                              <asp:TextBox ID="txtcat" runat="server" CssClass="form-control" style="width:325px !important;" />    
                          </div>
                      </td>
                      </tr>
                       <tr>
                      <td valign="middle">
                       Expire Date
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                       <asp:TextBox ID="txtexpdate" runat="server" CssClass="form-control" style="width:325px !important;" />    
                       </div>
                      </td>
                      <td valign="middle">
                       Package Intact
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                              <asp:DropDownList ID="drppintact" AppendDataBoundItems="true" runat="server" CssClass="form-control" style="width:325px !important;" >
                              <asp:ListItem Value="">Select</asp:ListItem>
                              <asp:ListItem Value="D" Text="Damaged"></asp:ListItem>
                              <asp:ListItem Value="I" Text="Intact"></asp:ListItem>
                              <asp:ListItem Value="R" Text="Return"></asp:ListItem>
                              </asp:DropDownList>   
                          </div>
                      </td>
                      </tr>
                       <tr>
                      <td valign="middle">
                       Transport Temperature
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                          <asp:DropDownList ID="drptrantemp" AppendDataBoundItems="true" runat="server" CssClass="form-control" style="width:325px !important;" >
                              <asp:ListItem Value="">Select</asp:ListItem>
                              <asp:ListItem Value="C" Text="Controlled"></asp:ListItem>
                              <asp:ListItem Value="R" Text="Room Temperatue"></asp:ListItem>
                              </asp:DropDownList>      
                       </div>
                      </td>
                      <td valign="middle">
                       Storage
                       </td>
                       <td valign="middle">
                         <div class="form-group">
                              <asp:DropDownList ID="drpstorage" AppendDataBoundItems="true" runat="server" CssClass="form-control" style="width:325px !important;" >
                              <asp:ListItem Value="">Select</asp:ListItem>
                              <asp:ListItem Value="RF" Text="Refrigerator"></asp:ListItem>
                              <asp:ListItem Value="SH" Text="Shelf"></asp:ListItem>
                              <asp:ListItem Value="MP" Text="Manufacturer Package"></asp:ListItem>
                              </asp:DropDownList>   
                          </div>                    
                      </td>
                      </tr>
                             <tr>
                      <td valign="middle">
                       Rec By MM
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                          <asp:DropDownList ID="drprecmm" AppendDataBoundItems="true" runat="server" CssClass="form-control" style="width:325px !important;" >
                              <asp:ListItem Value="">Select</asp:ListItem>
                              </asp:DropDownList>      
                       </div>
                      </td>
                      <td valign="middle">
                       Date Rec MM
                       </td>
                          <td valign="middle">
                      <div class="form-group">
                       <asp:TextBox ID="txtrecmm" ClientIDMode="Static" runat="server" CssClass="form-control" style="width:325px !important;" /> 
                      </div>
                      </td>   
                      </tr>
                      <tr>
                       <td valign="middle">
                       Vendor
                       </td>
                          <td valign="middle">
                      <div class="form-group">
                       <asp:TextBox ID="txtvendor" runat="server" CssClass="form-control" style="width:325px !important;" /> 
                      </div>
                      </td> 
                      </tr>
                     
                      </table>                

                               
    <script type="text/javascript">
        $(document).ready(function () {
            var dp = $('#<%=txtrecmm.ClientID%>');
            var dp1 = $('#<%=txtexpdate.ClientID%>');
            dp.datepicker({
                changeMonth: true,
                changeYear: true,
                format: "mm-dd-yyyy",
                language: "tr"
            }).on('changeDate', function (ev) {
                $(this).blur();
                $(this).datepicker('hide');
            });
            dp1.datepicker({
                changeMonth: true,
                changeYear: true,
                format: "mm-dd-yyyy",
                language: "tr"
            }).on('changeDate', function (ev) {
                $(this).blur();
                $(this).datepicker('hide');
            });
        });
</script>



                            <%-- <asp:TextBox ID="txtdtrecmm" runat="server" CssClass="datepicker" style="width:325px !important;" />  --%>
                                         
                           <asp:Button runat="server" ID="btnSave" CssClass="btn btn-theme" 
                            Width="100px" Text="Save" onclick="btnSave_Click" />
                        <%--  <button type="submit" class="btn btn-theme">Sign in</button>--%>
               </form>
               
          			</div><!-- /form-panel -->
          	</div>	<!-- /col-lg-12 -->
          	</div><!-- /row -->

            	<%--<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> Form Elements</h4>
                      <form class="form-horizontal style-form" method="get">
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Default</label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control">
                              </div>
                          </div>
                          </form>
                          </div> 
                          </div>
                          </div> --%>
</asp:Content>
