//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Infaestructura.Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class Producto_Inventario
    {
        public int id_inventario { get; set; }
        public int id_producto { get; set; }
        public int stock { get; set; }
    
        public virtual Inventarios Inventarios { get; set; }
        public virtual Productos Productos { get; set; }
    }
}