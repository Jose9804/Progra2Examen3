using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace WebApplication1.Clases
{
    public class Encuestas
    {
       

        public string Nombre { get; set; }
        public int Edad { get; set; }
        public string CorreoElectronico { get; set; }
        public string PartidoPolitico { get; set; }

        public Encuestas(string nombre, int edad, string correoElectronico, string partidoPolitico)
        {
            Nombre = nombre;
            Edad = edad;
            CorreoElectronico = correoElectronico;
            PartidoPolitico = partidoPolitico;
        }

        public Encuestas() { }

        public static int Agregar(string PNombre, int Edad, string CorreoElectronico, string PartidoPolitico)
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBConn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("spAgregarEncuesta", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@NombreParticipante", PNombre));
                    cmd.Parameters.Add(new SqlParameter("@EdadNacimiento", Edad));
                    cmd.Parameters.Add(new SqlParameter("@CorreoElectronico", CorreoElectronico));
                    cmd.Parameters.Add(new SqlParameter("@PartidoPolitico", PartidoPolitico));


                    retorno = cmd.ExecuteNonQuery();
                }
            }
            catch (System.Data.SqlClient.SqlException)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;
        }

        internal static int Agregar(string text1, string text2, string text3, string text4)
        {
            throw new NotImplementedException();
        }
    }
}