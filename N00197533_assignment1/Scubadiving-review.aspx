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
                <asp:Textbox runat="server" ID="diverfirstname"></asp:Textbox>
            </div>
            <div>
                <label>Last Name:</label>
                <asp:TextBox runat="server" ID="diverlastname"></asp:TextBox>
            </div>
            <div>
                <label>Date of dive:</label>
                <asp:TextBox runat="server" ID="dateofdive"></asp:TextBox>
            </div>
        </section> 
        <section>
            <h2>Who was your instructor/dive leader?</h2>
            <div>
                <asp:checkboxlist runat="server" ID="scuba_instructor">
                    <asp:ListItem Text="Scuba Steve" Value="scubasteve"></asp:ListItem>
                    <asp:ListItem Text="Scuba Dave" Value="scubedave"></asp:ListItem>
                    <asp:ListItem Text="Scuba Carol" Value="scubacarol"></asp:ListItem>
                </asp:checkboxlist>
            </div>
        </section>
        <section>
           <h2>Dive Experience</h2>
           <h3>Were you given clesar instruction in the following:</h3>
              <div>
               <label>Oxygen tank & breathing apparatus</label>
               <asp:RadioButtonList runat="server" ID="selectgroup1">
                   <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                   <asp:ListItem Text="No" Value="no"></asp:ListItem>
               </asp:RadioButtonList>
              </div>
              <div>
                <label>Goggles, Fins & other diving equipment</label>
                <asp:RadioButtonList runat="server" ID="selectgroup2">
                    <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                    <asp:ListItem Text="No" Value="no"></asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <label>Underwater hand gestures & Ear pressure release</label>
                <asp:RadioButtonList runat="server" ID="selectgroup3">
                    <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                    <asp:ListItem Text="No" value="no"></asp:ListItem>
                </asp:RadioButtonList>
            </div>
        </section>
        <section>
            <h3>Were you given adequate time to explore?</h3>
            <asp:RadioButtonList runat="server" ID="selectgroup4">
                    <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                    <asp:ListItem Text="No" value="no"></asp:ListItem>
                </asp:RadioButtonList>
        </section>
        <section>
            <h3>What were the conditions of the dive site and water?</h3>
            <asp:DropDownList runat="server" ID="userdropdownselect1">
                <asp:ListItem Text="Water was clean and clear of debris" Value="Clean"></asp:ListItem>
                <asp:ListItem Text="Water was somewhat clean" Value="Somewhat clean"></asp:ListItem>
                <asp:ListItem Text="Water was dirty and filled with debris" Value="Dirty"></asp:ListItem>
            </asp:DropDownList>
        </section>
        <section>
            <h3>How did you hear abour us?</h3>
            <asp:DropDownList runat="server" ID="userdropdownselect2">
                <asp:ListItem Text="-Select-" Value="select"></asp:ListItem>
                <asp:ListItem Text="A Friend" Value="afriend"></asp:ListItem>
                <asp:ListItem Text="Magazine Ad" Value="magazinead"></asp:ListItem>
                <asp:ListItem Text="Television commercial" Value="televisioncommercial"></asp:ListItem>
                <asp:ListItem Text="Other" Value="other"></asp:ListItem>
            </asp:DropDownList>
        </section>
        <section>
            <h3>Would you recommend us to a friend or family member?</h3>
            <asp:RadioButtonList runat="server" ID="selectgroup5">
                <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="no"></asp:ListItem>
            </asp:RadioButtonList>
        </section>
        <section>
            <asp:Button runat="server" Text="Submit"/>
        </section>
    </form>
</body>
</html>
