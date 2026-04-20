<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fresher.aspx.cs" Inherits="job_application_form_inasp.fresher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 align="center" style="color:blue;">Welcome To Fresher IT Job Application Form</h1>
            <h3 align="left" style="color:brown;">Personal Details</h3>
            <section>
            <!--first name-->
            First Name:<asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvfname" runat="server" ControlToValidate="txtfname" 
                ErrorMessage="First name should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revfname" runat="server" ControlToValidate="txtfname" ValidationExpression="^[A-Za-z]{3,20}$"
                ErrorMessage="name must conatin alphabets and characters count from 3 to 20" ForeColor="Red"></asp:RegularExpressionValidator><br /><br />
            <!--last name-->
            Last Name:<asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvlname" runat="server" ControlToValidate="txtlname"
                ErrorMessage="Last name should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revlname" runat="server" ControlToValidate="txtlname" ValidationExpression="^[A-Za-z]{3,20}$"
                ErrorMessage="last name must be alphabets and characters count from 3 to 20" ForeColor="Red"></asp:RegularExpressionValidator><br /><br />
            <!--gender-->
            Gender  :<asp:RadioButtonList ID="rblgender" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="rfvgender" runat="server" ControlToValidate="rblgender"
                ErrorMessage="Please select the gender" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
            <!--contact number-->
            Number  :<asp:TextBox ID="txtnumber" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvnumber" runat="server" ControlToValidate="txtnumber" 
                ErrorMessage="Please enter phone number" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revnumber" runat="server" ControlToValidate="txtnumber"
                ValidationExpression="^[6-9]\d{10}" ErrorMessage="Please enter the valid number" ForeColor="Red"></asp:RegularExpressionValidator><br /><br />
            <!--Email Id-->
            Email Id:<asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvemail" runat="server" ControlToValidate="txtemail"
                ErrorMessage="please enter Emailid" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revemail" runat="server" ControlToValidate="txtemail"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Please enter valid email id" ForeColor="Red"></asp:RegularExpressionValidator><br /><br />
            <!--Address-->
            Address  :<textarea id="txtarea" runat="server"></textarea>
            <asp:RequiredFieldValidator ID="rfvarea" runat="server" ControlToValidate="txtarea"
                ErrorMessage="Please enter Address" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
            </section>
            <h3 align="left" style="color:brown;">Educational Details</h3>
            <!--SSC Details-->
            <h5 align="left" style="color:forestgreen;">SSC Details</h5>
            SSC School Name:<asp:TextBox ID="txtsname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvsname" runat="server" ControlToValidate="txtsname" 
                ErrorMessage="Please enter School name" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revsname" runat="server" ControlToValidate="txtsname" 
                ValidationExpression="^[A-Za-z]{3-50}$" ErrorMessage="only alphabets allowed" ForeColor="Red"></asp:RegularExpressionValidator><br /><br />
            SSC year of passing:<asp:TextBox ID="txtsyear" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvsyear" runat="server" ControlToValidate="txtsyear" ErrorMessage="Please enter year" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
            SSC percentage :<asp:TextBox ID="txtsper" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvsper" runat="server" ControlToValidate="txtsper" 
                ErrorMessage="Please enter percentage" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rvsyear" runat="server" MinimumValue="35" MaximumValue="99" ControlToValidate="txtsper"
                Type="Double" ErrorMessage="percentage must be 35 to 99" ForeColor="Red"></asp:RangeValidator> <br /><br />
            <!--Intermediate Details-->
            <h5 align="left" style="color:forestgreen;">Intermediate Details</h5>
            Intermediate GroupName:<asp:DropDownList ID="ddlgroup" runat="server">
                <asp:ListItem>--SELECT--</asp:ListItem>
                <asp:ListItem>MPC</asp:ListItem>
                <asp:ListItem>BIpC</asp:ListItem>
                <asp:ListItem>MEC</asp:ListItem>
                <asp:ListItem>HEC</asp:ListItem>
                                   </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvigroup" runat="server" 
                ControlToValidate="ddlgroup" ErrorMessage="Please select group" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
            College Name :<asp:TextBox ID="txticname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvicname" runat="server" ControlToValidate="txticname"
                ErrorMessage="Please enter college name" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revicname" runat="server" ControlToValidate="txticname"
                ValidationExpression="^[A-Za-z]{5,50}$" ErrorMessage="only alphanbets allowed and characters count 5 to 50" ForeColor="Red"></asp:RegularExpressionValidator><br /><br />
            year of passing:<asp:TextBox ID="txtiyear" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfviyear" runat="server" ControlToValidate="txtiyear"
                ErrorMessage="please enter year of passing" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
            Inter Percentage:<asp:TextBox ID="txtiper" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfviper" runat="server" ControlToValidate="txtiper"
                ErrorMessage="please enter percentage" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rviper" runat="server" ControlToValidate="txtiper" MinimumValue="35" MaximumValue="99"
                Type="Double" ErrorMessage="percenatage sholud be 35 to 99" forcol="red"></asp:RangeValidator><br /><br />
            <!--Graduation Details-->
            <h5 align="left" style="color:forestgreen;">Graduation Details</h5>
            College Name<asp:TextBox ID="txtcname" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvcname" runat="server" ControlToValidate="txtcname"
                ErrorMessage="Please enter college name" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revcname" runat="server" ControlToValidate="txtcname" ValidationExpression="^[A-Za-z]{5-50}$" 
                ErrorMessage="only alphabets allowed" ForeColor="Red"></asp:RegularExpressionValidator><br /><br />
            University Name<asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvuname" runat="server" ControlToValidate="txtuname" 
                ErrorMessage="please enter unversity name" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revuname" runat="server" ControlToValidate="txtuname" 
                ValidationExpression="^[A-Za-z]{5,50}$" ErrorMessage="only alphabets allowed" ForeColor="Red"></asp:RegularExpressionValidator><br /><br />
          Select Branch  <asp:DropDownList ID="ddlcbranch" runat="server">
                <asp:ListItem>--SELECT--</asp:ListItem>
                <asp:ListItem>B.E(CSE)</asp:ListItem>
                <asp:ListItem>B.E(IT)</asp:ListItem>
                <asp:ListItem>BSC(computers)</asp:ListItem>
                <asp:ListItem>BCOM(computers)</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvddlbranch" runat="server"
                ControlToValidate="ddlcbranch" ErrorMessage="please select branch" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
            year of passing<asp:TextBox ID="txtcyear" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvcyear" runat="server" ControlToValidate="txtcyear" 
                ErrorMessage="please enter year of passing" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
            Graduation Percentage:<asp:TextBox ID="txtcper" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvcper" runat="server" ControlToValidate="txtcper" 
                ErrorMessage="please enter percenatge" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rvcper" runat="server" ControlToValidate="txtcper" MinimumValue="35" MaximumValue="99"
                Type="Double" ErrorMessage="percenatge must be 35 to 99"></asp:RangeValidator><br /><br />
            <!--PG Details-->
            <h5 align="left" style="color:forestgreen;">PG Details</h5>
            College name<asp:TextBox ID="txtpname" runat="server"></asp:TextBox><br /><br />
            University name<asp:TextBox ID="txtupgname" runat="server"></asp:TextBox><br /><br />
            Year of passing<asp:TextBox ID="txtupgyear" runat="server"></asp:TextBox><br /><br />
            PG percentage<asp:TextBox ID="txtupgper" runat="server"></asp:TextBox>
            
        </div>
    </form>
</body>
</html>
