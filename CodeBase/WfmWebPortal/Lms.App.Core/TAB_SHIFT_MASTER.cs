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
    
    public partial class TAB_SHIFT_MASTER
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TAB_SHIFT_MASTER()
        {
            this.TAB_WF_WORK_DETAILS = new HashSet<TAB_WF_WORK_DETAILS>();
            this.TAB_TOOL_TALK_CONFIGURATION = new HashSet<TAB_TOOL_TALK_CONFIGURATION>();
            this.TAB_TOOL_TALK_CONFIGURATION1 = new HashSet<TAB_TOOL_TALK_CONFIGURATION>();
            this.TAB_TOOL_TALK_DAILY_CHECKLIST = new HashSet<TAB_TOOL_TALK_DAILY_CHECKLIST>();
        }
    
        public System.Guid SHIFT_ID { get; set; }
        public string SHIFT_NAME { get; set; }
        public System.Guid COMPANY_ID { get; set; }
        public Nullable<System.TimeSpan> SHIFT_START_TIME { get; set; }
        public Nullable<System.TimeSpan> SHIFT_END_TIME { get; set; }
        public System.DateTime created_date { get; set; }
        public string Created_by { get; set; }
        public Nullable<System.DateTime> UPDATED_DATE { get; set; }
        public string UPDATED_BY { get; set; }
        public string status { get; set; }
        public Nullable<int> ID { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_WF_WORK_DETAILS> TAB_WF_WORK_DETAILS { get; set; }
        public virtual TAB_COMPANY_MASTER TAB_COMPANY_MASTER { get; set; }
        public virtual TAB_COMPANY_MASTER TAB_COMPANY_MASTER1 { get; set; }
        public virtual TAB_COMPANY_MASTER TAB_COMPANY_MASTER2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_TOOL_TALK_CONFIGURATION> TAB_TOOL_TALK_CONFIGURATION { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_TOOL_TALK_CONFIGURATION> TAB_TOOL_TALK_CONFIGURATION1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TAB_TOOL_TALK_DAILY_CHECKLIST> TAB_TOOL_TALK_DAILY_CHECKLIST { get; set; }
    }
}
