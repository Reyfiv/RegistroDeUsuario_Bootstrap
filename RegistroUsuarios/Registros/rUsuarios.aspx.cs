using BLL;
using Entities;
using RegistroUsuarios.Utilidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistroUsuarios.Registros
{
    public partial class rUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Permisos permisos = new Permisos();

            if (!Page.IsPostBack)
            {
               //LlenaCombo();

                int id = Utils.ToInt(Request.QueryString["id"]);
                if (id > 0)
                {
                    RepositorioBase<Usuarios> repositorio = new RepositorioBase<Usuarios>();
                    var categoria = repositorio.Buscar(id);

                    if (categoria == null)
                    {
                        MostrarMensaje(TiposMensaje.Error, "Registro no encontrado");
                    }
                    else
                    {
                        LlenaCampos(categoria);
                    }
                }   
            }
        }

        protected void LlenaCombo()
        {
            RepositorioBase<Permisos> repositorioBase = new RepositorioBase<Permisos>();

            PermisosDropDownList.DataSource = repositorioBase.GetList(t => true);
            PermisosDropDownList.DataValueField = "ID";
            PermisosDropDownList.DataTextField = "Descripcion";
            PermisosDropDownList.DataBind();

            ViewState["Usuarios"] = new Usuarios();
        }

        protected void BindGrid()
        {
            DatosGridView.DataSource = ((Usuarios)ViewState["Presupuesto"]).Permisos;
            DatosGridView.DataBind();
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            RepositorioBase<Usuarios> repositorio = new RepositorioBase<Usuarios>();
            Usuarios usuario = new Usuarios();
            bool paso = false;

            LlenaClase(usuario);
            if (usuario.UsuarioId == 0)
                paso = repositorio.Guardar(usuario);
            else
                paso = repositorio.Modificar(usuario);

            if(paso)
            {
                MostrarMensaje(TiposMensaje.Success, "Guardado con Exito!");
                Limpiar();
            }
        }

        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void EliminarButton_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(UsuarioIdTextBox.Text);
            RepositorioBase<Usuarios> repositorio = new RepositorioBase<Usuarios>();
            if (repositorio.Eliminar(id))
            {
                MostrarMensaje(TiposMensaje.Success, "Eliminado con Exito!");
            }
            else
                MostrarMensaje(TiposMensaje.Error, "Fallo al Eliminar :(");
            Limpiar();
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(UsuarioIdTextBox.Text);
            RepositorioBase<Usuarios> repositorio = new RepositorioBase<Usuarios>();
            Usuarios usuario = repositorio.Buscar(id);

            if (usuario != null)
            {

                NombresTextBox.Text = usuario.Nombres;
                NombreUsuarioTextBox.Text = usuario.NombreUsuario;
                ContraseñaTextBox.Text = usuario.Contraseña;
                ConfirmarContraseñaTextBox.Text = usuario.ConfirmarContraseña;
                TipoUsuarioDropDownList.Text = usuario.TipoUsuario;
            }
            else
                MostrarMensaje(TiposMensaje.Error, "Error, No existe");
        }

        protected void AgregarButton_Click(object sender, EventArgs e)
        {
            List<DetallePermisos> detalle = new List<DetallePermisos>();
            Usuarios usuarios = new Usuarios();
            RepositorioBase<Permisos> repositorio = new RepositorioBase<Permisos>();

            var permiso = repositorio.Buscar(PermisosDropDownList.SelectedIndex);

            usuarios = (Usuarios)ViewState["Usuarios"];
            detalle.Add(new DetallePermisos(0, permiso.ID, permiso.Descripcion));
           

            ViewState["Usuarios"] = usuarios;

            this.BindGrid();
        }

        private void Limpiar()
        {
            UsuarioIdTextBox.Text = "0";
            NombresTextBox.Text = string.Empty;
            NombreUsuarioTextBox.Text = string.Empty;
            ContraseñaTextBox.Text = string.Empty;
            ConfirmarContraseñaTextBox.Text = string.Empty;
            TipoUsuarioDropDownList.Text = string.Empty;
            ViewState["Usuarios"] = new Usuarios();
            this.BindGrid();
        }

        private Usuarios LlenaClase(Usuarios usuario)
        {
            int id;
            bool result = int.TryParse(UsuarioIdTextBox.Text, out id);
            if(result == true)
            {
                usuario.UsuarioId = id;
            }
            else
            {
                usuario.UsuarioId = 0;
            }
            usuario = (Usuarios)ViewState["Usuarios"];
            usuario.Nombres = NombresTextBox.Text;
            usuario.NombreUsuario = NombreUsuarioTextBox.Text;
            usuario.Contraseña = ContraseñaTextBox.Text;
            usuario.ConfirmarContraseña = ConfirmarContraseñaTextBox.Text;
            usuario.TipoUsuario = TipoUsuarioDropDownList.Text;
            return usuario;
        }

        private void LlenaCampos(Usuarios usuarios)
        {
            UsuarioIdTextBox.Text = Convert.ToString(usuarios.UsuarioId);
            NombresTextBox.Text = usuarios.Nombres;
            NombreUsuarioTextBox.Text = usuarios.NombreUsuario;
            ContraseñaTextBox.Text = usuarios.Contraseña;
            ConfirmarContraseñaTextBox.Text = usuarios.ConfirmarContraseña;
            this.BindGrid();
        }

        private void MostrarMensaje(TiposMensaje tipo, string mensaje)
        {

            ErrorLabel.Text = mensaje;

            if (tipo == TiposMensaje.Success)
                ErrorLabel.CssClass = "alert-success";
            else
                ErrorLabel.CssClass = "alert-danger";
        }

        
    }
}