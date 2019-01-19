<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rUsuarios.aspx.cs" Inherits="RegistroUsuarios.Registros.rUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="panel" style="background-color: #ff6624">
        <div class="panel-heading" style="font-family: Freestyle Script; font-size: x-large; color: blanchedalmond">Registro de Usuarios</div>

    </div>


    <div class="panel-body">
        <div class="form-horizontal col-md-12" role="form">

            <%--UsuarioID--%>
            <div class="form-group">
                <label for="UsuarioIdTextBox" class="col-md-3 control-label input-sm" style="font-size: medium">UsuarioId</label>
                <div class="col-md-1 col-sm-2 col-xs-4">
                    <asp:TextBox ID="UsuarioIdTextBox" runat="server" placeholder="0" class="form-control input-sm" style="font-size:medium"></asp:TextBox>
                </div>
                <div class="col-md-1 col-sm-2 col-xs-4">
                    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" class="btn btn-info btn-md" OnClick="BuscarButton_Click"/>
                </div>
            </div>
            <%--hasta aqui--%>

            <%--Nombres--%>
            <div class="form-group">
                <label for="NombresTextBox" class="col-md-3 control-label input-sm" style="font-size: medium">Nombres</label>
                <div class="col-md-8">
                    <asp:TextBox ID="NombresTextBox" runat="server" class="form-control input-sm" style="font-size:medium"></asp:TextBox>
                       <%--<asp:RequiredFieldValidator ID="RFVNombres" runat="server" MaxLength="200"
                        ControlToValidate="NombresTextBox"
                        ErrorMessage="Campo Nombres obligatorio" ForeColor="Red"
                        Display="Dynamic" SetFocusOnError="True"
                        ToolTip="Campo Nombres obligatorio">Por favor llenar el campo Nombres
                    </asp:RequiredFieldValidator>--%>
                </div>
            </div>
            <%--hasta aqui--%>

            <%--Nombre de usuario--%>
            <div class="form-group">
                <label for="NombreUsuarioTextBox" class="col-md-3 control-label input-sm" style="font-size: medium">Nombre de usuario</label>
                <div class="col-md-8">
                    <asp:TextBox ID="NombreUsuarioTextBox" runat="server" class="form-control input-sm" style="font-size:medium"></asp:TextBox>
                       <%-- <asp:RequiredFieldValidator ID="RFVNombreUsuario" runat="server" MaxLength="200"
                        ControlToValidate="NombreUsuarioTextBox"
                        ErrorMessage="Campo Nombre de Usuario obligatorio" ForeColor="Red"
                        Display="Dynamic" SetFocusOnError="True"
                        ToolTip="Campo Nombre de Usuario obligatorio">Por favor llenar el campo Nombre de usuario
                    </asp:RequiredFieldValidator>--%>
                </div>
            </div>
            <%--hasta aqui--%>

            <%--Contraseña--%>
            <div class="form-group">
                <label for="ContraseñaTextBox" class="col-md-3 control-label input-sm" style="font-size: medium">Contraseña</label>
                <div class="col-md-8">
                   <asp:TextBox ID="ContraseñaTextBox" runat="server" class="form-control input-sm" style="font-size:medium"></asp:TextBox>
                      <%--  <asp:RequiredFieldValidator ID="RFVContraseña" runat="server" MaxLength="200"
                        ControlToValidate="ContraseñaTextBox"
                        ErrorMessage="Campo Contraseña de Usuario obligatorio" ForeColor="Red"
                        Display="Dynamic" SetFocusOnError="True"
                        ToolTip="Campo Contraseña obligatorio">Por favor llenar el campo Contraseña
                    </asp:RequiredFieldValidator>--%>
                </div>
            </div>
            <%--hasta aqui

            <%--Confirmar Contraseña--%>
            <div class="form-group">
                <label for="ConfirmarContraseñaTextBox" class="col-md-3 control-label input-sm" style="font-size: medium">Confirmar Contraseña</label>
                <div class="col-md-8">
                    <asp:TextBox ID="ConfirmarContraseñaTextBox" runat="server" class="form-control input-sm" style="font-size:medium"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RFVConfirmarContraseña" runat="server" MaxLength="200"
                        ControlToValidate="ConfirmarContraseñaTextBox"
                        ErrorMessage="Campo Confirmar Contraseña de Usuario obligatorio" ForeColor="Red"
                        Display="Dynamic" SetFocusOnError="True"
                        ToolTip="Campo Confirmar Contraseña obligatorio">Por favor llenar el campo Confirmar Contraseña
                    </asp:RequiredFieldValidator>--%>
                </div>
            </div>
            <%--hasta aqui--%>

            <%--Tipo Usuario--%>
            <div class="form-group">
                <label for="TipoUsuarioDropDownList" class="col-md-3 control-label input-sm" style="font-size:medium">Tipo de Usuario</label>
                <div class="col-md-8">
                     <asp:DropDownList ID="TipoUsuarioDropDownList" runat="server" Class="form-control input-sm" style="font-size:medium">
                            <asp:ListItem Selected="True">Administrador</asp:ListItem>
                            <asp:ListItem>Cajero</asp:ListItem>
                     </asp:DropDownList>
                </div>
            </div>
            <%--hasta aqui--%>

            <%--Permisos--%>
            <div class="form-group">
                <label for="PermisosDropDownList" class="col-md-3 control-label input-sm" style="font-size:medium"> Permisos</label>
                <div class="col-md-8">
                   <asp:DropDownList ID="PermisosDropDownList" runat="server" Class="form-control input-sm" style="font-size:medium">
                           
                     </asp:DropDownList>
                </div>

                 <div class="col-md-1 col-sm-2 col-xs-4 ">
                     <asp:Button class="btn btn-success btn-md" ID="AgregarButton" runat="server" Text="+" OnClick="AgregarButton_Click"  />
                  </div>

                <asp:GridView ID="DatosGridView" runat="server">
                    <Columns>
                        <asp:BoundField HeaderText="Id"></asp:BoundField>
                        <asp:BoundField HeaderText="Descripcion"></asp:BoundField>
                    </Columns>
                </asp:GridView>

            </div>
            <%--hasta aqui--%>

            <%--Botones--%>
            <div class="panel">
                <div class="text-center">
                    <div class="form-group">
                        <asp:Button ID="NuevoButton" runat="server" Text="Nuevo" class="btn btn-primary btn-lg" OnClick="NuevoButton_Click"/>
                        <asp:Button ID="GuardarButton" runat="server" Text="Guardar" class="btn btn-success btn-lg" OnClick="GuardarButton_Click" />
                        <asp:Button ID="EliminarButton" runat="server" Text="Eliminar" class="btn btn-danger btn-lg" OnClick="EliminarButton_Click" />
                    </div>
                </div>
            </div>

            <div class="col-lg-12">
                <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
            </div>

        </div>
    </div>


</asp:Content>


