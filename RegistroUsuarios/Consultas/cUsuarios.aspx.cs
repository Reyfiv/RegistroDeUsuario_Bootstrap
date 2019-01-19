using BLL;
using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistroUsuarios.Conusltas
{
    public partial class cUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MetodoBuscar();
        }

        private void MetodoBuscar()
        {
            Expression<Func<Usuarios, bool>> filtro = x => true;
            RepositorioBase<Usuarios> repositorio = new RepositorioBase<Usuarios>();

            int id;

            switch (FiltroDropDownList.SelectedIndex)
            {
                case 0: //Todo
                    repositorio.GetList(c => true);
                    break;
                case 1://UsuarioId
                    id = Utilidades.Utils.ToInt(CriterioTextBox.Text);
                    filtro = c => c.UsuarioId == id;
                    break;
                case 2://Nombres
                    filtro = c => c.NombreUsuario.Contains(CriterioTextBox.Text);
                    break;
                case 3: //NombreUsuario
                    filtro = c => c.NombreUsuario.Contains(CriterioTextBox.Text);
                    break;
                case 4: //TipoUsuario
                    filtro = c => c.TipoUsuario.Contains(CriterioTextBox.Text);
                    break;
            }

            DatosGridView.DataSource = repositorio.GetList(filtro);
            DatosGridView.DataBind();

        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            MetodoBuscar();
        }
        
    }
}