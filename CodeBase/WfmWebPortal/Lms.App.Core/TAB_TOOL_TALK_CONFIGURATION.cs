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
    
    public partial class TAB_TOOL_TALK_CONFIGURATION
    {
        public System.Guid ID { get; set; }
        public System.Guid DEPT_ID { get; set; }
        public System.Guid SHIFT_ID { get; set; }
        public System.Guid TOOL_TALK_ID { get; set; }
        public Nullable<System.DateTime> CREATED_DATE { get; set; }
        public string CREATED_BY { get; set; }
        public Nullable<System.DateTime> UPDATED_DATE { get; set; }
        public string UPDATED_BY { get; set; }
        public System.Guid SUBDEPT_ID { get; set; }
    
        public virtual TAB_DEPARTMENT_MASTER TAB_DEPARTMENT_MASTER { get; set; }
        public virtual TAB_DEPARTMENT_MASTER TAB_DEPARTMENT_MASTER1 { get; set; }
        public virtual TAB_SHIFT_MASTER TAB_SHIFT_MASTER { get; set; }
        public virtual TAB_SHIFT_MASTER TAB_SHIFT_MASTER1 { get; set; }
        public virtual TAB_TOOL_TALK_MASTER TAB_TOOL_TALK_MASTER { get; set; }
        public virtual TAB_TOOL_TALK_MASTER TAB_TOOL_TALK_MASTER1 { get; set; }
    }
}
