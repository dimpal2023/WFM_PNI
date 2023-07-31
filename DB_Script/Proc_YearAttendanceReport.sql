create or alter procedure Proc_YearAttendanceReport
@BUILDING_ID UNIQUEIDENTIFIER=null,
@DEPT nvarchar(200)=null,
@SUB_DEPT nvarchar(200)=null,
@WF_EMP_TYPE int=null,
@EMP_NAME nvarchar(200)=null,
@YEAR_ID nvarchar(20)=null,
@EmployeeId nvarchar(20)=null,
@OpCode int=null,
@EMP_TYPE varchar(10)=null,
@EMPLOYMENT_TYPE varchar(10)=null
as
begin
 if(@OpCode=41)
begin
		select bm.*,dm.DEPT_NAME,cm.COMPANY_NAME,sdm.SUBDEPT_NAME
		,wm.EMP_NAME,wm.EMP_ID
		 ,Month(bm.ATTENDANCE_DATE) as MonthNum
		 ,(Select DateName(month,DateAdd(month,Month(bm.ATTENDANCE_DATE),-1))) as MonthNam
		 into #tmp 
		from TAB_BIOMETRIC as bm 
		inner join TAB_WORKFORCE_MASTER as wm on wm.WF_ID=bm.WORKFORCE_ID and bm.BIOMETRIC_CODE=wm.BIOMETRIC_CODE
		inner join TAB_DEPARTMENT_MASTER as dm on dm.DEPT_ID=wm.DEPT_ID
		inner join TAB_SUBDEPARTMENT_MASTER as sdm on sdm.SUBDEPT_ID=wm.SUBDEPT_ID
		left join TAB_COMPANY_MASTER as cm on cm.COMPANY_ID=wm.COMPANY_ID
		where   wm.BUILDING_ID=@BUILDING_ID
		and (isnull(@DEPT,'')='' or wm.DEPT_ID=TRY_CONVERT(UNIQUEIDENTIFIER, @DEPT))
		and (isnull(@SUB_DEPT,'')='' or sdm.SUBDEPT_ID=TRY_CONVERT(UNIQUEIDENTIFIER, @SUB_DEPT))
		and (isnull(@WF_EMP_TYPE,'0')='0' or wm.WF_EMP_TYPE=@WF_EMP_TYPE)
		and (isnull(@EMPLOYMENT_TYPE,'0')='0' or wm.EMP_TYPE_ID=@EMPLOYMENT_TYPE)
		and (isnull(@EMP_NAME,'')='' or wm.WF_ID=TRY_CONVERT(UNIQUEIDENTIFIER, @EMP_NAME))
		and year(bm.ATTENDANCE_DATE)=@YEAR_ID 
		
		select (
		select top 1 DEPT_NAME,COMPANY_NAME,SUBDEPT_NAME
		,--(select 
		isnull((select EMP_ID,BIOMETRIC_CODE,EMP_NAME,year(ATTENDANCE_DATE) as yearN,MonthNam,
			(select COUNT(1) from #tmp as t3 where STATUS_CODE in ('P') and t3.MonthNum=t2.MonthNum) as Present,
			(select COUNT(1) from #tmp as t3 where STATUS_CODE in ('A') and t3.MonthNum=t2.MonthNum) as Absent,
			(select COUNT(1) from #tmp as t3 where STATUS_CODE in ('H') and t3.MonthNum=t2.MonthNum) as Holiday,
			(select COUNT(1) from #tmp as t3 where STATUS_CODE in ('HP') and t3.MonthNum=t2.MonthNum) as HolidayP,
			(select COUNT(1) from #tmp as t3 where STATUS_CODE in ('WO') and t3.MonthNum=t2.MonthNum) as WO,
			(select COUNT(1) from #tmp as t3 where STATUS_CODE in ('WOP') and t3.MonthNum=t2.MonthNum) as WOP
			from #tmp as t2 --where t2.MonthNum=t1.MonthNum
			group by t2.MonthNum,EMP_ID,BIOMETRIC_CODE,EMP_NAME,year(ATTENDANCE_DATE),MonthNam
			for json path),'[]') as list
		--from #tmp as t1 group by MonthNum order by MonthNum asc for json path) as Monthcount
		
		from #tmp as t for json path 
		) as t


		

end
end