using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;  

namespace WebPracticaPokemon
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Pokemon> listaPokemon { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio negocio = new PokemonNegocio();
            listaPokemon = negocio.listarconSP();

            if (!IsPostBack)
            {
                repRepetidor.DataSource = listaPokemon;
                repRepetidor.DataBind();
            }
        }

        protected void btnEjemplo_Click(object sender, EventArgs e)
        {
            // hacemos casteo al sender para que lo genere como un boton  """
            string valor = ((Button)sender).CommandArgument;
        }
    }
}