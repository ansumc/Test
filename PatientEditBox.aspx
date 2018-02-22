<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientEditBox.aspx.cs" Inherits="TissueTrack.PatientEditBox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
                       <tr>
                        <td colspan="2" valign="middle">
                         <asp:Button ID="btnSubmit" runat="server" 
                                style="margin-left: 116px; margin-top: 5px;" Text="Update" 
                                onclick="btnSubmit_Click" />
                        </td>
                       </tr>
                       </table>                
    
    </div>
    </form>
</body>
</html>
