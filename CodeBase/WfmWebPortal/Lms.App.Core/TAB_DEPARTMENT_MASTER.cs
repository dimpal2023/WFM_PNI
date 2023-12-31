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
    
    public partial class TAB_DEPARTMENT_MASTER
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TAB_DEPARTMENT_MASTER()
        {
            this.TAB_WF_WORK_DETAILS = new HashSet<TAB_WF_WORK_DETAILS>();
            this.TAB_WORKFORCE_MASTER = new HashSet<TAB_WORKFORCE_MASTER>();
            this.TAB_BUILDING_DEPARTMENT_MAPPING = new HashSet<TAB_BUILDING_DEPARTMENT_MAPPING>();
            this.TAB_USER_DEPARTMENT_MAPPING = new HashSet<TAB_USER_DEPARTMENT_MAPPING>();
            this.TAB_MRF_DETAILS = new HashSet<TAB_MRF_DETAILS>();
            this.TAB_SUBDEPARTMENT_MASTER = new HashSet<TAB_SUBDEPARTMENT_MASTER>();
            this.TAB_GATEPASS = new HashSet<TAB_GATEPASS>();
            this.TAB_TOOL_TALK_MASTER = new HashSet<TAB_TOOL_TALK_MASTER>();
            this.TAB_TOOL_TALK_MASTER1 = new HashSet<TAB_TOOL_TALK_MASTER>();
            this.TAB_TOOL_TALK_CONFIGURATION = new HashSet<TAB_TOOL_TALK_CONFIGURATION>();
            this.TAB_TOOL_TALK_DAILY_CHECKLIST = new HashSet<TAB_TOOL_TALK_DAILY_CHECKLIST>();
            this.TAB_TOOL_TALK_CONFIGURATION1 = new HashSet<TAB_TOOL_TALK_CONFIGURATION>();
            this.TAB_ITEM_CODE = new HashSet<TAB_ITEM_CODE>();
        }
    
        public System.Guid DEPT_ID { get; set; }
        public string DEPT_NAME { get; set; }
        public System.Guid COMPANY_ID { get; set; }
        public string DEPT_HEAD_ID { get; set; }
        public string DEPT_HEAD_NAME { get; set; }
        public System.DateTime created_date { get; set; }
        public string Created_by { get; set; }
        public Nullable<System.DateTime> UPDATED_DATE { get; set; }
        public string UPDATED_BY { get; set; }
        public string status { get; set; }
        public Nullable<System.Guid> BUILDING_ID { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_WF_WORK_DETAILS> TAB_WF_WORK_DETAILS { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_WORKFORCE_MASTER> TAB_WORKFORCE_MASTER { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_BUILDING_DEPARTMENT_MAPPING> TAB_BUILDING_DEPARTMENT_MAPPING { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_USER_DEPARTMENT_MAPPING> TAB_USER_DEPARTMENT_MAPPING { get; set; }
        public virtual TAB_COMPANY_MASTER TAB_COMPANY_MASTER { get; set; }
        public virtual TAB_COMPANY_MASTER TAB_COMPANY_MASTER1 { get; set; }
        public virtual TAB_COMPANY_MASTER TAB_COMPANY_MASTER2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_MRF_DETAILS> TAB_MRF_DETAILS { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_SUBDEPARTMENT_MASTER> TAB_SUBDEPARTMENT_MASTER { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_GATEPASS> TAB_GATEPASS { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_TOOL_TALK_MASTER> TAB_TOOL_TALK_MASTER { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_TOOL_TALK_MASTER> TAB_TOOL_TALK_MASTER1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_TOOL_TALK_CONFIGURATION> TAB_TOOL_TALK_CONFIGURATION { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_TOOL_TALK_DAILY_CHECKLIST> TAB_TOOL_TALK_DAILY_CHECKLIST { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_TOOL_TALK_CONFIGURATION> TAB_TOOL_TALK_CONFIGURATION1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_ITEM_CODE> TAB_ITEM_CODE { get; set; }
    }
}
