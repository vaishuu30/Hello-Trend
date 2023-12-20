<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="additems.aspx.cs" Inherits="Self.Admin.additems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">

        <div class="col-sm-2"></div>




        <div class="col-sm-8">
            <div class="form-group">
                <label>Item Name</label>
                <asp:TextBox ID="txtItemName" cssClass="form-control" runat ="server"></asp:TextBox>


                <br />
                <br />


            </div>
              <div class="form-group">
                <label>Image</label>
                  <asp:FileUpload ID="FileUpload1"  cssClass="form-control" runat="server" />


                  <br />
                  <br />


            </div>
              <div class="form-group">
                <label>Image1</label>
                  <asp:FileUpload ID="FileUpload2"  cssClass="form-control" runat="server" />

                  <br />
                  <br />

            </div>
              <div class="form-group">
                <label>Image2</label>
                  <asp:FileUpload ID="FileUpload4"  cssClass="form-control" runat="server" />

                  <br />
                  <br />

            </div>
              <div class="form-group">
                <label>Image3</label>
                  <asp:FileUpload ID="FileUpload3"  cssClass="form-control" runat="server" />

                  <br />
                  <br />

            </div>
              <div class="form-group">
                <label>Category</label>
                  <asp:DropDownList ID="ddlCategory" cssClass="form-control" runat="server"></asp:DropDownList>


                  <br />
                  <br />


            </div>
              <div class="form-group">
                  <asp:Button ID="btnAdd" CssClass="btn btn-sucess btn-lg" runat="server" Text="Add" OnClick="btnAdd_Click" />


                  <br />
                  <br />


            </div>
             


            </div>






        <div class="col-sm-2"></div>





    </div>

    <div class="row">
         <div class="col-sm-12">
             <div class="table">
                 <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="IID" DataSourceID="SqlDataSource1">
                     <Columns>
                         <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                         <asp:BoundField DataField="IID" HeaderText="IID" ReadOnly="True" SortExpression="IID" />
                         <asp:BoundField DataField="Iname" HeaderText="Iname" SortExpression="Iname" />
                         <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                         <asp:BoundField DataField="Image1" HeaderText="Image1" SortExpression="Image1" />
                         <asp:BoundField DataField="image2" HeaderText="image2" SortExpression="image2" />
                         <asp:BoundField DataField="image3" HeaderText="image3" SortExpression="image3" />
                         <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
                     </Columns>
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VPfashionConnectionString2 %>" DeleteCommand="DELETE FROM [AdddItems] WHERE [IID] = @IID" InsertCommand="INSERT INTO [AdddItems] ([IID], [Iname], [Image], [Image1], [image2], [image3], [CName]) VALUES (@IID, @Iname, @Image, @Image1, @image2, @image3, @CName)" SelectCommand="SELECT [IID], [Iname], [Image], [Image1], [image2], [image3], [CName] FROM [AdddItems]" UpdateCommand="UPDATE [AdddItems] SET [Iname] = @Iname, [Image] = @Image, [Image1] = @Image1, [image2] = @image2, [image3] = @image3, [CName] = @CName WHERE [IID] = @IID">
                     <DeleteParameters>
                         <asp:Parameter Name="IID" Type="Int32" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:Parameter Name="IID" Type="Int32" />
                         <asp:Parameter Name="Iname" Type="String" />
                         <asp:Parameter Name="Image" Type="String" />
                         <asp:Parameter Name="Image1" Type="String" />
                         <asp:Parameter Name="image2" Type="String" />
                         <asp:Parameter Name="image3" Type="String" />
                         <asp:Parameter Name="CName" Type="String" />
                     </InsertParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="Iname" Type="String" />
                         <asp:Parameter Name="Image" Type="String" />
                         <asp:Parameter Name="Image1" Type="String" />
                         <asp:Parameter Name="image2" Type="String" />
                         <asp:Parameter Name="image3" Type="String" />
                         <asp:Parameter Name="CName" Type="String" />
                         <asp:Parameter Name="IID" Type="Int32" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
                
             </div>


         </div>


    </div>
</asp:Content>
