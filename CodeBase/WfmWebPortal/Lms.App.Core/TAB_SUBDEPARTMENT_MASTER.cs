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
    
    public partial class TAB_SUBDEPARTMENT_MASTER
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TAB_SUBDEPARTMENT_MASTER()
        {
            this.TAB_MRF_DETAILS = new HashSet<TAB_MRF_DETAILS>();
            this.TAB_USER_DEPARTMENT_MAPPING = new HashSet<TAB_USER_DEPARTMENT_MAPPING>();
            this.TAB_WORKFORCE_MASTER = new HashSet<TAB_WORKFORCE_MASTER>();
            this.TAB_GATEPASS = new HashSet<TAB_GATEPASS>();
            this.TAB_ITEM_CODE = new HashSet<TAB_ITEM_CODE>();
            this.TAB_TOOL_TALK_MASTER = new HashSet<TAB_TOOL_TALK_MASTER>();
        }
    
        public System.Guid SUBDEPT_ID { get; set; }
        public System.Guid DEPT_ID { get; set; }
        public string SUBDEPT_NAME { get; set; }
        public System.Guid COMPANY_ID { get; set; }
        public string DEPT_HEAD_ID { get; set; }
        public string DEPT_HEAD_NAME { get; set; }
        public System.DateTime CREATED_DATE { get; set; }
        public string CREATED_BY { get; set; }
        public Nullable<System.DateTime> UPDATED_DATE { get; set; }
        public string UPDATED_BY { get; set; }
        public string STATUS { get; set; }
        public Nullable<int> FreezingStrength { get; set; }
        public Nullable<System.Guid> BUILDING_ID { get; set; }
    
        public virtual TAB_COMPANY_MASTER TAB_COMPANY_MASTER { get; set; }
        public virtual TAB_DEPARTMENT_MASTER TAB_DEPARTMENT_MASTER { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_MRF_DETAILS> TAB_MRF_DETAILS { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_USER_DEPARTMENT_MAPPING> TAB_USER_DEPARTMENT_MAPPING { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_WORKFORCE_MASTER> TAB_WORKFORCE_MASTER { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_GATEPASS> TAB_GATEPASS { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_ITEM_CODE> TAB_ITEM_CODE { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_TOOL_TALK_MASTER> TAB_TOOL_TALK_MASTER { get; set; }
    }
}
