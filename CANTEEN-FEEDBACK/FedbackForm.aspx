<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="FedbackForm.aspx.cs" Inherits="CANTEEN_FEEDBACK.FedbackForm" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--===== Background CSS =====-->
    <link href="CSS/Background.css" rel="stylesheet" />


    <style>
        span {
            color: black;
            font-weight: bolder;
            font-size:20px;
        }
        .emojis{
            color:white;
            font-size:23px;
        }

        .row {
            background: #FFBF00;
            border-radius: 30px;
        }

        side {
            border-top-left-radius: 30px;
            border-bottom-left-radius: 30px;
        }

        .Rsave {
            border: none;
            outline: none;
            height: 40px;
            width: 80px;
            background-color: black;
            color: white;
            border-radius: 4px;
            font-weight: bold;
        }

            .Rsave:hover {
                background: white;
                border: 1px solid;
                color: black;
            }

        #Fimage {
            border-top-left-radius: 30px;
            border-bottom-left-radius: 30px;
        }

        h1 {
            color: black;
            font-weight: 800;
            font-size: 45px;
            text-align: center;
            text-transform: uppercase;
            letter-spacing: 2px;
            font-family: Copperplate;
            margin-top: 25px;
        }

        .rb{
           font-size:15px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <div class="container">
            <h1>ඔබගේ අදහස් දක්වන්න.
            </h1>
        </div>
    </section>

    <section class="Form my-4 mx-5">
        <div class="container">
            <div class="row no-gutters">
                <div class="col-lg-5">
                    <img src="Images/fd.jpeg" id="Fimage" class="side img-fluid" alt="Feedback-Form" />
                </div>
                <div class="col-lg-7 px-5 pt-5">
                    <form>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <span>දිනය :</span>
                                <asp:TextBox ID="txtRDate" class="form-control my-1 p-1" placeholder="Date" runat="server" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <span>EPF අංකය :</span>
                                <asp:TextBox ID="txtREPF" class="form-control my-1 p-1" placeholder="EPF" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <span>ආහාරය :</span>
                                <asp:DropDownList ID="dwMeal" class="form-control my-1 p-1" runat="server">
                                    <asp:ListItem>උදෑසන ආහාරය</asp:ListItem>
                                    <asp:ListItem>දහවල් ආහාරය</asp:ListItem>
                                    <asp:ListItem>රාත්‍රී ආහාරය</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-8">
                                <span>තෝරන්න :</span><br />
                                &nbsp;&nbsp;<asp:RadioButton ID="rbExcellent" GroupName="feedback" class="rb" Text="ඉතා හොදයි/மிகவும் நல்லது" runat="server" /><span class="emojis">&#128515;</span><br />
                                &nbsp;&nbsp;<asp:RadioButton ID="rbGood" GroupName="feedback" class="rb" Text="හොදයි/நல்ல" runat="server" /><span class="emojis">&#128522;</span><br />
                                &nbsp;&nbsp;<asp:RadioButton ID="rbNeutral" GroupName="feedback" class="rb" Text="සාමාන්‍යයි/பொதுவாக நல்லது" runat="server" /><span class="emojis">&#128578;</span><br />
                                &nbsp;&nbsp;<asp:RadioButton ID="rbPoor" GroupName="feedback" class="rb" Text="වැඩි දියුනු විය යුතුයි/மேம்படுத்த வேண்டும்" runat="server" /><span class="emojis">&#128577;</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <span>හේතුව :</span>
                                <asp:DropDownList ID="dwReason" class="form-control my-1 p-1" runat="server">
                                    <asp:ListItem>රසය මදිය</asp:ListItem>
                                    <asp:ListItem>ව්‍යන්ජන ගැලපෙන්නෙ නැත</asp:ListItem>
                                    <asp:ListItem>ලුනු මදිය</asp:ListItem>
                                    <asp:ListItem>ලුනු වැඩිය</asp:ListItem>
                                    <asp:ListItem>ප්‍රමානය මදිය</asp:ListItem>
                                    <asp:ListItem>...</asp:ListItem>
                                    <asp:ListItem>...</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <asp:Button ID="btnRSave" class="Rsave mt-3 mb-5" runat="server" Text="Save" OnClick="btnRSave_Click" />
                                <asp:Button ID="btnCancel" class="Rsave mt-3 mb-5" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>



</asp:Content>
