<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rUsuarios.aspx.cs" Inherits="RegistroUsuarios.Registros.rUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="panel" style="background-color:#ff6624">
         <div class="panel-heading" style="font-family:Freestyle Script; font-size: x-large; color:blanchedalmond">Registro de Usuarios</div>

     </div> 
    

    <div class="panel-body">
        <div class="form-horizontal col-md-12" role="form">   

            <%--UsuarioID--%>
             <div class="form-group">
                <label for="UsuarioIdTextBox" class="col-md-3 control-label input-sm" style="font-size:medium">UsuarioId</label>
                <div class="col-md-1 col-sm-2 col-xs-4">
                    <input type="text" class="form-control" id="UsuarioIdTextbox" placeholder="0" name="UsuarioIdTextbox form-control input-sm ">
                </div>
                <div class="col-md-1 col-sm-2 col-xs-4">
                    <button type="button" class="btn btn-warning"><span class="glyphicon glyphicon-search"></span> Buscar</button>
                </div>
            </div>
            <%--hasta aqui--%>

            <%--Nombres--%>
            <div class="form-group">
                <label for="NombresTextBox" class="col-md-3 control-label input-sm" style="font-size:medium">Nombres</label>
                <div class="col-md-8">
                    <input type="text" class="form-control" id="NombresTextbox" placeholder="" name="NombresTextbox form-control input-sm ">
                </div>
            </div>
            <%--hasta aqui--%>

             <%--Nombre de usuario--%>
            <div class="form-group">
                <label for="NombreUsuarioTextBox" class="col-md-3 control-label input-sm" style="font-size:medium">Nombre de usuario</label>
                <div class="col-md-8">
                    <input type="text" class="form-control" id="NombreUsuarioTextbox" placeholder="" name="NombreUsuarioTextbox form-control input-sm ">
                </div>
            </div>
            <%--hasta aqui--%>

             <%--Contraseña--%>
            <div class="form-group">
                <label for="ContraseñaTextBox" class="col-md-3 control-label input-sm" style="font-size:medium">Contraseña</label>
                <div class="col-md-8">
                    <input type="text" class="form-control" id="ContraseñaTextbox" placeholder="" name="ContraseñaTextbox form-control input-sm ">
                </div>
            </div>
            <%--hasta aqui--%>

             <%--Confirmar Contraseña--%>
            <div class="form-group">
                <label for="ConfirmarContraseñaTextBox" class="col-md-3 control-label input-sm" style="font-size:medium">Confirmar Contraseña</label>
                <div class="col-md-8">
                    <input type="text" class="form-control" id="ConfirmarContraseñaTextBox" placeholder="" name="ConfirmarContraseñaTextBox form-control input-sm ">
                </div>
            </div>
            <%--hasta aqui--%>

             <%--Tipo Usuario--%>
            <div class="form-group">
                <label for="TipoUsuarioDropDownList" class="col-md-3 control-label input-sm" style="font-size:medium">Tipo de Usuario</label>
                <div class="col-md-8">
                    <select class="form-control" id="TipoUsuarioDropDownList">
                        <option>Administrador</option>
                        <option>Cajero</option>
                    </select>
                </div>
            </div>
            <%--hasta aqui--%>

            <%--Botones--%>
             <div class="panel">
                <div class="text-center">
                    <div class="form-group">
                        <button type="button" class="btn btn-warning btn-lg" ID="NuevoButton" OnClick="NuevoButton_Click"><span class="glyphicon glyphicon-file"></span> Nuevo</button>
                        <button type="button" class="btn btn-warning btn-lg" ID="GuardarButton" OnClick="GuardarButton_Click"><span class="glyphicon glyphicon-floppy-disk"> Guardar</button>
                        <button type="button" class="btn btn-warning btn-lg" ID="EliminarButton" OnClick="EliminarButton_Click"><span class="glyphicon glyphicon-remove-circle"> Eliminar</button>
                    </div>
                </div>
            </div>

        </div>
     </div>

      
</asp:Content>


