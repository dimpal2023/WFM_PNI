//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Wfm.App.Core
{
    using System;
    using System.Collections.Generic;
    
    public partial class TAB_EMPL_TYPE_MASTER
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TAB_EMPL_TYPE_MASTER()
        {
            this.TAB_WORKFORCE_MASTER = new HashSet<TAB_WORKFORCE_MASTER>();
        }
    
        public short EMP_TYPE_ID { get; set; }
        public string EMP_TYPE { get; set; }
        public System.Guid COMPANY_ID { get; set; }
        public System.DateTime CREATED_DATE { get; set; }
        public string STATUS { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_WORKFORCE_MASTER> TAB_WORKFORCE_MASTER { get; set; }
        public virtual TAB_COMPANY_MASTER TAB_COMPANY_MASTER { get; set; }
        public virtual TAB_COMPANY_MASTER TAB_COMPANY_MASTER1 { get; set; }
        public virtual TAB_COMPANY_MASTER TAB_COMPANY_MASTER2 { get; set; }
    }
}
