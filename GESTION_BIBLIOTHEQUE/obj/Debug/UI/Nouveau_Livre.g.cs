﻿#pragma checksum "..\..\..\UI\Nouveau_Livre.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "3EC047B6CC2C0E46C64AE82A849C5D4C29DB767D0666BD28E586D86082D5E491"
//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré par un outil.
//     Version du runtime :4.0.30319.42000
//
//     Les modifications apportées à ce fichier peuvent provoquer un comportement incorrect et seront perdues si
//     le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

using GESTION_BIBLIOTHEQUE.UI;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace GESTION_BIBLIOTHEQUE.UI {
    
    
    /// <summary>
    /// Nouveau_Livre
    /// </summary>
    public partial class Nouveau_Livre : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 19 "..\..\..\UI\Nouveau_Livre.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox nom_auteur_txt;
        
        #line default
        #line hidden
        
        
        #line 20 "..\..\..\UI\Nouveau_Livre.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox nationalite_auteur_txt;
        
        #line default
        #line hidden
        
        
        #line 21 "..\..\..\UI\Nouveau_Livre.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox prenom_auteur_txt;
        
        #line default
        #line hidden
        
        
        #line 22 "..\..\..\UI\Nouveau_Livre.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox maison_edition_txt;
        
        #line default
        #line hidden
        
        
        #line 29 "..\..\..\UI\Nouveau_Livre.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button annuler_btn;
        
        #line default
        #line hidden
        
        
        #line 30 "..\..\..\UI\Nouveau_Livre.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button valider_btn;
        
        #line default
        #line hidden
        
        
        #line 33 "..\..\..\UI\Nouveau_Livre.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox quantite_txt;
        
        #line default
        #line hidden
        
        
        #line 34 "..\..\..\UI\Nouveau_Livre.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox combo_categorie;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\..\UI\Nouveau_Livre.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox titre_txt;
        
        #line default
        #line hidden
        
        
        #line 36 "..\..\..\UI\Nouveau_Livre.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox combo_niveau_etude;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/GESTION_BIBLIOTHEQUE;component/ui/nouveau_livre.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\UI\Nouveau_Livre.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.nom_auteur_txt = ((System.Windows.Controls.TextBox)(target));
            return;
            case 2:
            this.nationalite_auteur_txt = ((System.Windows.Controls.TextBox)(target));
            return;
            case 3:
            this.prenom_auteur_txt = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.maison_edition_txt = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.annuler_btn = ((System.Windows.Controls.Button)(target));
            
            #line 29 "..\..\..\UI\Nouveau_Livre.xaml"
            this.annuler_btn.Click += new System.Windows.RoutedEventHandler(this.Annuler_click);
            
            #line default
            #line hidden
            return;
            case 6:
            this.valider_btn = ((System.Windows.Controls.Button)(target));
            
            #line 30 "..\..\..\UI\Nouveau_Livre.xaml"
            this.valider_btn.Click += new System.Windows.RoutedEventHandler(this.Valider_click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.quantite_txt = ((System.Windows.Controls.TextBox)(target));
            return;
            case 8:
            this.combo_categorie = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 9:
            this.titre_txt = ((System.Windows.Controls.TextBox)(target));
            return;
            case 10:
            this.combo_niveau_etude = ((System.Windows.Controls.ComboBox)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}
