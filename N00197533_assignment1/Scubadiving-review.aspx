<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Scubadiving-review.aspx.cs" Inherits="N00197533_assignment1.Scubadiving_review" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Scuba Diving Review Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Diving Experience Review Form</h1>
        <section>
            <h2>Diver Info</h2> 
            <div>
                <label>First Name:</label>
                <asp:Textbox runat="server" ID="diver_first_name"></asp:Textbox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="diver_first_name" ErrorMessage="First name required">*</asp:RequiredFieldValidator>
            </div>
            <div>
                <label>Last Name:</label>
                <asp:TextBox runat="server" ID="diver_last_name"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="diver_last_name" ErrorMessage="Last name required">*</asp:RequiredFieldValidator>
            </div>
            <div>
                <label>Email:</label>
                <asp:TextBox runat="server" ID="diver_email"></asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="diver_email" ErrorMessage="Please enter a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="diver_email" ErrorMessage="Email required" Display="Dynamic">*</asp:RequiredFieldValidator>              
            </div>
        </section> 
        <section>
            <h2>Who was your instructor/dive leader?</h2>
                <asp:checkboxlist runat="server" ID="scuba_instructor_select">
                    <asp:ListItem Text="Scuba Steve" Value="scubasteve"></asp:ListItem>
                    <asp:ListItem Text="Scuba Dave" Value="scubedave"></asp:ListItem>
                    <asp:ListItem Text="Scuba Carol" Value="scubacarol"></asp:ListItem>
                </asp:checkboxlist>
        </section>
        <section>
           <h2>Dive Experience</h2>
           <h3>Were you given clear instruction in the following:</h3>
               <div>
               <label>Oxygen tank & breathing apparatus</label>
               <asp:RadioButtonList runat="server" ID="oxygen_apparatus">
                   <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                   <asp:ListItem Text="No" Value="No"></asp:ListItem>
               </asp:RadioButtonList>
               <asp:RequiredFieldValidator runat="server"  ErrorMessage="Please select Yes or No" ControlToValidate="oxygen_apparatus">*</asp:RequiredFieldValidator>
               </div>
               <div>
               <label>Goggles, Fins & other diving equipment</label>
               <asp:RadioButtonList runat="server" ID="diving_equipment">
                   <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                   <asp:ListItem Text="No" Value="no"></asp:ListItem>
               </asp:RadioButtonList>
               <asp:RequiredFieldValidator runat="server"  ErrorMessage="Please select Yes or No" ControlToValidate="diving_equipment">*</asp:RequiredFieldValidator>
               </div>
               <div>
               <label>Underwater hand gestures & Ear pressure release</label>
               <asp:RadioButtonList runat="server" ID="underwater_gestures">
                   <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                   <asp:ListItem Text="No" value="no"></asp:ListItem>                  
               </asp:RadioButtonList>
               <asp:RequiredFieldValidator runat="server"  ErrorMessage="Please select Yes or No" ControlToValidate="underwater_gestures">*</asp:RequiredFieldValidator>
               </div>
        </section>
        <section>
            <h3>Were you given adequate time to explore?</h3>
            <label>Please enter number of minutes:</label>
            <asp:Textbox runat="server" ID="length_of_dive"></asp:Textbox>
            <asp:RangeValidator runat="server" ErrorMessage="Please enter a number between 30 and 60" MinimumValue="30" MaximumValue="60" ControlToValidate="length_of_dive" Display="Dynamic">*</asp:RangeValidator>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="length_of_dive" ErrorMessage="Please enter a number" Display="Dynamic">*</asp:RequiredFieldValidator>
        </section>
        <section>
            <h3>What were the conditions of the dive site and water?</h3>
            <asp:DropDownList runat="server" ID="dive_conditions">
                <asp:ListItem Text="-Select-" Value=""></asp:ListItem>
                <asp:ListItem Text="Water was clean and clear of debris" Value="Clean"></asp:ListItem>
                <asp:ListItem Text="Water was somewhat clean" Value="Somewhat clean"></asp:ListItem>
                <asp:ListItem Text="Water was dirty and filled with debris" Value="Dirty"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="dive_conditions" ErrorMessage="Please select from the dropdown list">*</asp:RequiredFieldValidator>
        </section>
        <section>
            <h3>How did you hear about us?</h3>
            <asp:DropDownList runat="server" ID="how_did_you_hear_about_us">
                <asp:ListItem Text="-Select-" Value=""></asp:ListItem>
                <asp:ListItem Text="A Friend" Value="afriend"></asp:ListItem>
                <asp:ListItem Text="Magazine Ad" Value="magazinead"></asp:ListItem>
                <asp:ListItem Text="Television commercial" Value="televisioncommercial"></asp:ListItem>
                <asp:ListItem Text="Other" Value="other"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="how_did_you_hear_about_us" ErrorMessage="Please select from the dropdown list">*</asp:RequiredFieldValidator>
        </section>   
        <section>
            <h3>Would you recommend us to a friend or family member?</h3>
            <asp:RadioButtonList runat="server" ID="would_you_recommend">
                <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="no"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="would_you_recommend" ErrorMessage="Please select Yes or No">*</asp:RequiredFieldValidator>
        </section>
        <section>
            <asp:Button runat="server" Text="Submit"/>
        </section>
        <div>
        <asp:ValidationSummary runat="server" />
        </div>
        <div id="scuba_reviewsummary" runat="server"></div>
    </form>
</body>
</html>
