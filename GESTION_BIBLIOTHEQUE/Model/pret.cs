//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré à partir d'un modèle.
//
//     Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//     Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GESTION_BIBLIOTHEQUE.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class pret
    {
        public int id { get; set; }
        public Nullable<System.DateTime> date_debut { get; set; }
        public Nullable<System.DateTime> date_rendu { get; set; }
        public Nullable<int> nbre_liv_emprunte { get; set; }
        public Nullable<int> statut_pret { get; set; }
        public Nullable<int> inscription_id { get; set; }
        public Nullable<int> livre_id { get; set; }
        public Nullable<System.DateTime> date_fin { get; set; }
    
        public virtual inscription inscription { get; set; }
        public virtual livre livre { get; set; }
    }
}
