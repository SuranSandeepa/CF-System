<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="FeedbackPage.aspx.cs" Inherits="CANTEEN_FEEDBACK.FeedbackPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />

    <div class="card">
        <div class="card-body">
            <form>
                <div class="form-group">
                    <label class="form-label">EPF අංකය :</label>
                    <input type="text" class="form-control" id="txtEPF" placeholder="Enter text here">
                </div>
                <div class="form-group">
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="OptionGroup" id="rbExcellent" value="option1">
                        <label class="form-check-label" for="rbExcellent" style='font-size:20px;'>ඉතා හොදයි &#128515;</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="OptionGroup" id="rbGood" value="option2">
                        <label class="form-check-label" for="rbGood" style='font-size:20px;'>හොදයි &#128578</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="OptionGroup" id="rbNeutral" value="option3">
                        <label class="form-check-label" for="rbNeutral" style='font-size:20px;'>සාමාන්‍යයි &#128528</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="OptionGroup" id="rbPoor" value="option4">
                        <label class="form-check-label" for="rbPoor" style='font-size:20px;'>නරකයි &#128543</label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="DropDownList1">ආහාරය :</label>
                    <select class="form-control" id="DropDownList1">
                        <option>උදය ආහාරය</option>
                        <option>දහවල් ආහාරය</option>
                        <option>රාත්‍රී ආහාරය</option>
                    </select>
                </div>
                <asp:Button ID="btnSubmit" class="btn btn-primary" runat="server" Text="Submit" />
            </form>
        </div>
    </div>


</asp:Content>
