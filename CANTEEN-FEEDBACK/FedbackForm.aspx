<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="FedbackForm.aspx.cs" Inherits="CANTEEN_FEEDBACK.FedbackForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        * {
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
            font-family: 'Source Sans Pro', sans-serif;
            text-decoration: none;
            color: white;
        }

        body {
            background: url(./bg.png);
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
        }

        form {
            background: rgba(27,31,34,0.80);
            width: 640px;
            margin: 50px auto;
            max-width: 97%;
            border-radius: 4px;
            padding: 55px 30px;
        }

            form .title h2 {
                letter-spacing: 6px;
                border-bottom: 1px solid white;
                display: inline-block;
                padding-bottom: 8px;
                margin-bottom: 32px;
            }

            form .half {
                display: flex;
                justify-content: space-between;
            }

                form .half .item {
                    display: flex;
                    flex-direction: column;
                    margin-bottom: 24px;
                    width: 48%;
                }

            form label {
                display: block;
                font-size: 13px;
                letter-spacing: 3.5px;
                margin-bottom: 16px;
            }

            form .half .item input {
                border-radius: 4px;
                border: 1px solid white;
                outline: 0;
                padding: 16px;
                width: 100%;
                height: 44px;
                background: transparent;
                font-size: 17px;
            }

            form .full {
                margin-bottom: 24px;
            }

                form .full textarea {
                    background: transparent;
                    border-radius: 4px;
                    border: 1px solid white;
                    outline: 0;
                    padding: 12px 16px;
                    width: 100%;
                    height: 200px;
                    font-size: 17px;
                }

            form .action {
                margin-bottom: 32px;
            }

                form .action input {
                    background: transparent;
                    border-radius: 4px;
                    border: 1px solid white;
                    cursor: pointer;
                    font-size: 13px;
                    font-weight: 600;
                    height: 44px;
                    letter-spacing: 3px;
                    outline: 0;
                    padding: 0 20px 0 22px;
                    margin-right: 10px;
                }

                    form .action input[type="submit"] {
                        background: white;
                        color: black;
                    }

            form .icons a {
                border: 1px solid white;
                border-radius: 50%;
                line-height: 36px;
                text-align: center;
                font-weight: 600;
                width: 38px;
                margin-right: 10px;
            }

                form .half .item input:focus, form .full textarea:focus, form .action input[type="reset"]:hover, form .icons a:hover {
                    background: rgba(255,255,255,0.075);
                }

        @media (max-width: 480px) {
            form .half {
                flex-direction: column;
            }

                form .half .item {
                    width: 100%;
                }

            form .action {
                display: flex;
                flex-direction: column;
            }

                form .action input {
                    margin-bottom: 10px;
                    width: 100%;
                }
        }
    </style>

</asp:Content>
    
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form>
        <div class="title">
            <h2>CONTACT</h2>
        </div>
        <div class="half">
            <div class="item">
                <label for="name" runat="server">NAME</label>
                <input type="text" id="name" runat="server">
            </div>
            <div class="item">
                <label for="email" runat="server">EMAIL</label>
                <input type="text" id="email" runat="server">
            </div>
        </div>
        <div class="full">
            <label for="message" runat="server">MESSAGE</label>
            <textarea name="" id="message" runat="server"></textarea>
        </div>
        <div class="action">
            <input type="submit" value="SEND MESSAGE" runat="server">
            <input type="reset" value="RESET" runat="server">
        </div>
<%--        <div class="icons">
            <a href="" class="fa fa-twitter"></a>
            <a href="" class="fa fa-facebook"></a>
            <a href="" class="fa fa-instagram"></a>
            <a href="" class="fa fa-github"></a>
        </div>--%>
    </form>

</asp:Content>
