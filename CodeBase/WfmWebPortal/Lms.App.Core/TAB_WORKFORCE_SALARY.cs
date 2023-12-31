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
    
    public partial class TAB_WORKFORCE_SALARY
    {
        public System.Guid ID { get; set; }
        public Nullable<System.Guid> WF_ID { get; set; }
        public Nullable<int> SALARY_MONTH { get; set; }
        public Nullable<System.DateTime> STARTDATE { get; set; }
        public Nullable<System.DateTime> ENDDATE { get; set; }
        public Nullable<decimal> PAID_DAYS { get; set; }
        public Nullable<decimal> OVERTIME_HOURS { get; set; }
        public Nullable<int> TOTAL_LEAVE_TAKEN_CURRENT_MONTH { get; set; }
        public Nullable<int> LEAVE_CARRY_FORWARD { get; set; }
        public Nullable<int> TOTAL_LEAVE_AVAILABLE { get; set; }
        public Nullable<int> LEAVE_ADJUSTED { get; set; }
        public Nullable<int> LEAVE_BALANCE { get; set; }
        public Nullable<int> LEAVE_DEDUCTION { get; set; }
        public Nullable<decimal> BASIC_DA { get; set; }
        public Nullable<decimal> HRA { get; set; }
        public Nullable<decimal> SPECIAL_ALLOWANCES { get; set; }
        public Nullable<decimal> ACTUAL_BASIC_DA { get; set; }
        public Nullable<decimal> ACTUAL_HRA { get; set; }
        public Nullable<decimal> ACTUAL_SPECIAL_ALLOWANCES { get; set; }
        public Nullable<decimal> PRODUCTION_INCENTIVE_BONUS { get; set; }
        public Nullable<decimal> PF { get; set; }
        public Nullable<decimal> ESI { get; set; }
        public Nullable<decimal> TDS { get; set; }
        public Nullable<decimal> SHOP_FLOOR_FINE { get; set; }
        public Nullable<decimal> OTHER_DEDUCTION { get; set; }
        public Nullable<decimal> ADVANCE { get; set; }
        public Nullable<decimal> OVERTIME_WAGES { get; set; }
        public Nullable<decimal> WORKINGDAY_WAGES { get; set; }
        public Nullable<decimal> TOTAL_WAGES { get; set; }
        public Nullable<decimal> TOTAL_WAGES_AFTER_DEDUCTION { get; set; }
        public Nullable<decimal> EMPLOYER_EPF { get; set; }
        public Nullable<decimal> EMPLOYER_ESI { get; set; }
        public Nullable<decimal> ADMIN_CHARGES { get; set; }
        public Nullable<decimal> EDLI_CHARGES { get; set; }
        public Nullable<System.DateTime> CREATED_ON { get; set; }
        public string MODE_OF_PAYMENT { get; set; }
        public string PAID_STATUS { get; set; }
        public Nullable<decimal> PR_AMOUNT { get; set; }
        public Nullable<int> NoofPresentDays { get; set; }
    
        public virtual TAB_WORKFORCE_MASTER TAB_WORKFORCE_MASTER { get; set; }
    }
}
