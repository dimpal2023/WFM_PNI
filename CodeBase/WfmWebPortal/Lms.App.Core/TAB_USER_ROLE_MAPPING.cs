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
    
    public partial class TAB_USER_ROLE_MAPPING
    {
        public System.Guid ID { get; set; }
        public Nullable<System.Guid> USER_ID { get; set; }
        public Nullable<System.Guid> ROLE_ID { get; set; }
        public System.DateTime created_date { get; set; }
        public string Created_by { get; set; }
        public Nullable<System.DateTime> UPDATED_DATE { get; set; }
        public string UPDATED_BY { get; set; }
        public string status { get; set; }
    
        public virtual TAB_LOGIN_MASTER TAB_LOGIN_MASTER { get; set; }
        public virtual TAB_LOGIN_MASTER TAB_LOGIN_MASTER1 { get; set; }
        public virtual TAB_LOGIN_MASTER TAB_LOGIN_MASTER2 { get; set; }
        public virtual TAB_ROLE_MASTER TAB_ROLE_MASTER { get; set; }
        public virtual TAB_ROLE_MASTER TAB_ROLE_MASTER1 { get; set; }
        public virtual TAB_ROLE_MASTER TAB_ROLE_MASTER2 { get; set; }
    }
}
