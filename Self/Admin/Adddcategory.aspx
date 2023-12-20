<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="Adddcategory.aspx.cs" Inherits="Self.Admin.Adddcategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="alert">
      <div class="row">
          <div class="col-sm-4"></div>
           <div class="col-sm-4"></div>
          <div class="form-group">
              <label>Add Category</label>
              <asp:TextBox ID="txtCategory" CssClass="form-control" runat="server"></asp:TextBox>


              <br />
              <br />


          </div>
            <div class="col-sm-4">






              <label>

              <asp:Button ID="btnAdd" CssClass="btn btn-Sucess btn-lg" runat="server" Text="Add" OnClick="btnAdd_Click" Width="108px" Height="28px" />


                <br />
                <br />
                <br />


                </label>


            </div>


          
      </div>
  </div>

    <div class="row">
        <div class="col-sm-2"> </div>
         <div class="col-sm-8">
             <div class="form-group">






                 <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CID" DataSourceID="SqlDataSource1" >

                   

                     <Columns>
                         <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                         <asp:BoundField DataField="CID" HeaderText="CID" InsertVisible="False" ReadOnly="True" SortExpression="CID" />
                         <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
                     </Columns>

                   

                     <HeaderStyle BackColor="#ffccff" ForeColor="Black" />
                    
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VPfashionConnectionString2 %>" DeleteCommand="DELETE FROM [category] WHERE [CID] = @CID" InsertCommand="INSERT INTO [category] ([CName]) VALUES (@CName)" SelectCommand="SELECT * FROM [category]" UpdateCommand="UPDATE [category] SET [CName] = @CName WHERE [CID] = @CID">
                     <DeleteParameters>
                         <asp:Parameter Name="CID" Type="Int32" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:Parameter Name="CName" Type="String" />
                     </InsertParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="CName" Type="String" />
                         <asp:Parameter Name="CID" Type="Int32" />
                     </UpdateParameters>
                 </asp:SqlDataSource>

             </div>




              <div class="col-sm-2"></div>
             </div>


       
    </div>






             

             




</asp:Content>
