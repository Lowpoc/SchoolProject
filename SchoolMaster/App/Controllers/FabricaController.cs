using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using SchoolMaster.App.Context;
using SchoolMaster.App.Models;

namespace SchoolMaster.App.Controllers
{
    [DataObject(true)]
    public class FabricaController
    {

        #region ConsultarFabricas

        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<FabricaClass> consultarFiltro(string DS_ESTADO, string DS_FABRICA)
        {
            List<FabricaClass> listaretornada = new List<FabricaClass>();
            FabricaModel modelo = new FabricaModel();
            listaretornada = modelo.consultarFiltros(DS_ESTADO, DS_FABRICA);
            return listaretornada;
        }
        #endregion

        #region MetodoDeletar
        [DataObjectMethod(DataObjectMethodType.Delete)]
        public Boolean DeleteEmpresa(Int32 ID_FABRICA)
        {
            FabricaModel modelo = new FabricaModel();
            return modelo.deletar(ID_FABRICA);
        }

        #endregion

        #region UpdateMetodos

        [DataObjectMethod(DataObjectMethodType.Update)]

        public void AtualizarFabrica(string DS_Fabrica, string DS_Endereco, string NU_CNPJ, Int32 NU_TELEFONE, Int32 ID_FABRICA , string DS_CIDADE , string DS_ESTADO, Int32 qtdProdutos)
        {
            FabricaClass  objFabrica = new FabricaClass();
            objFabrica.ID_FABRICA = ID_FABRICA;
            objFabrica.DS_CIDADE = DS_CIDADE;
            objFabrica.DS_Endereco = DS_Endereco;
            objFabrica.DS_Fabrica = DS_Fabrica;
            objFabrica.DS_ESTADO = DS_ESTADO;
            objFabrica.NU_CNPJ = NU_CNPJ;
            objFabrica.NU_TELEFONE = NU_TELEFONE;
            FabricaModel modelo = new FabricaModel();
            modelo.update(objFabrica);
        }

        #endregion

    }
}