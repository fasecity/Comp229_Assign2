<%@ Page Title="Survey" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="Comp229_Assign02.Survey" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



 <div class="age">
   
       <br />
       <br />
      <asp:Label ID="AgeLabel" runat="server" Text="Label"></asp:Label>
     <br />
     <asp:TextBox ID="AgeTextBox" class="form-control" runat="server"></asp:TextBox>
     
     <asp:RequiredFieldValidator ID="AgeRequiredFieldValidator" runat="server" 
     ControlToValidate="AgeTextBox" ValidationGroup="Valley" 
         ErrorMessage="*Please put in your age" Display="Dynamic"></asp:RequiredFieldValidator>
    
     
      <asp:RangeValidator ID="AgeRangeValidator"  runat="server" 
      ControlToValidate="AgeTextBox" ValidationGroup="Valley" Type="Integer" MinimumValue="5" MaximumValue="100" ErrorMessage="Please put in real age" Display="Dynamic"></asp:RangeValidator>
      
      <br />
     <asp:Label ID="NameLabel" runat="server" Text="Label"></asp:Label>
    <br />
      <asp:TextBox ID="NameTextBox" class="form-control" Type="string" runat="server"></asp:TextBox>
     
     <asp:RequiredFieldValidator ID="NameRequiredFieldValidator" runat="server" 
     ControlToValidate="NameTextbox" ValidationGroup="Valley" 
      Type="string" ErrorMessage="*Please put in your name" Display="Dynamic"></asp:RequiredFieldValidator>
    
     <asp:RegularExpressionValidator ID="StringRegularExpressionValidator" runat="server"
        ControlToValidate="NameTextbox" ErrorMessage="Names dont have numbers or symbols unless your Prince(rip)" 
         ValidationExpression="^[a-zA-Z'.\s]{1,40}$" Display="Dynamic"></asp:RegularExpressionValidator>
     
      <br />
        <p> Gender is optional</p>
         <asp:Label ID="GenderLabel" runat="server" Text="Gender"></asp:Label>
         <asp:RadioButton ID="MaleRadioButton" Text="Male" runat="server" />
         <asp:RadioButton ID="FemaleRadioButton" Text="Female" runat="server" />
    
        <asp:Label ID="GenderHiddenLabel" runat="server" Text=""></asp:Label>
     
      <br />
    <div>
         <br />
        <asp:Label ID="DropDownLabel" runat="server" Text="label"></asp:Label>
         <br />
         <br />
        <asp:DropDownList ID="DropDownList1" class="form-control"  runat="server">
            <asp:ListItem Value="funky berry">funky berry</asp:ListItem>
            <asp:ListItem Value="coco nuts">coco nuts</asp:ListItem>
            <asp:ListItem Value="honeydew huny">honeydew huny</asp:ListItem>
         </asp:DropDownList>
         <br />
    </div>
     <div>
         <asp:Label ID="PriceLabel" runat="server" Text="Label"></asp:Label>
         <br />
         <asp:TextBox ID="PriceTextBox" class="form-control" runat="server"></asp:TextBox>
         <asp:CompareValidator ID="PriceCompareValidator" runat="server" ControlToValidate="PriceTextbox"
         ValidationGroup="Valley" Operator="DataTypeCheck" Type="Currency" ErrorMessage="Please enter ammout with a decimal value" Display="Dynamic"></asp:CompareValidator>
     </div>
    
      <div>
         <asp:Label ID="EmailLabel" runat="server" Text="Label"></asp:Label>
          <br />
          <asp:TextBox ID="EmailTextBox" class="form-control" runat="server"></asp:TextBox>
           <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator" runat="server" 
     ControlToValidate="EmailTextbox" ValidationGroup="Valley" 
      Type="email" ErrorMessage="*Please put in email adress" Display="Dynamic"></asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator1" runat="server"
        ControlToValidate="EmailTextbox" ErrorMessage="Enter a real email address" 
         ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$" 
               Display="Dynamic"></asp:RegularExpressionValidator>
          
     </div>
     
     
      <br />
     
     <asp:Button ID="SubmitButton" class="btn btn default"
          ValidationGroup="Valley" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
      <br />
      
     
</div>
   

    











</asp:Content>