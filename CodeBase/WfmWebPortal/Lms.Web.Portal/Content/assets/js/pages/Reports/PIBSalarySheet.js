$(document).ready(function () {
    $("select[required]").css({ position: "absolute", display: "inline", height: 0, padding: 0, width: 0 });
    $('#DEPT_ID').find('option').not(':first').remove();
    var ddl = $("#EMPLOYMENT_TYPE option").html();
    ddl += '<option value="3">Both</option>';
    $("#EMPLOYMENT_TYPE").append(ddl);
})

function onBuildingChange() {
    var buildingId = $("#BUILDING_ID option:selected").val();
    $.get('/ManPowerRequest/GetFloorByBuildingId?buildingId=' + buildingId, function (data) {
        $('#DEPT_ID').find('option').not(':first').remove();
        $.each(data, function (i, item) {
            $('#DEPT_ID').append($('<option>', {
                value: item.DEPT_ID,
                text: item.DEPT_NAME
            }));
        });
        $('#DEPT_ID').formSelect();
    });
}


function GetReport() {
    debugger
    $("#particalDiv").empty();
    var BUILDING_ID = $('#BUILDING_ID').val();
    var DEPT_ID = $('#DEPT_ID').val();
    var SUBDEPT_ID = $('#SUBDEPT_ID').val();
    var WF_EMP_TYPE = $('#WF_EMP_TYPE').val();
    var EMPLOYMENT_TYPE = 2;
    var MONTH_ID = $('#MONTH_ID').val();
    var YEAR_ID = $('#YEAR_ID').val();

    if (BUILDING_ID == "") {
        toastr["error"]('Please Select Unit.');
        return;
    } else if (WF_EMP_TYPE == "") {
        toastr["error"]('Please Select Employee Type.');
        return;
    } else if (MONTH_ID == "") {
        toastr["error"]('Please Select Month.');
        return;
    } else if (YEAR_ID == "") {
        toastr["error"]('Please Select Year.');
        return;
    }

    $.ajax(
        {
            type: 'Get',
            url: '/Reports/Get_PIB_SUMMARY?BUILDING_ID=' + BUILDING_ID + '&DEPT_ID=' + DEPT_ID + '&SUBDEPT_ID=' + SUBDEPT_ID + '&WF_EMP_TYPE=' + WF_EMP_TYPE + '&MONTH_ID=' + MONTH_ID + '&YEAR_ID=' + YEAR_ID + '&EMPLOYMENT_TYPE=' + EMPLOYMENT_TYPE,
            beforeSend: function () {
                $('.page-loader-wrapper').show();
            },
            complete: function () {
                $('.page-loader-wrapper').hide();
            },
            success:
                function (response) {
                    var html = '';
                    if (response != "") {
                        var List = $.parseJSON(response);
                       
                        debugger
                        var result = List[0];
                        var Cols = result.list;
                        //var AtList = result.AttendanceSheet;
                        var MonthYear = $("#MONTH_ID option:selected").text() + ' ' + $("#YEAR_ID option:selected").text();
                        html += '<div class="table-responsive">';
                        html += '<table id="tableExports" class="display table table-bordered table-checkable order-column m-t-20 width-per-100" width="100%"> <thead>';

                        html += '<tr style="background: #29c1c9;color:white;font-weight:400!important">'
                        html += '<th class="bold" colspan="50" style="text-align: center; font-size: 1.7rem; ">' + result.COMPANY_NAME + '</th>'
                        html += '</tr>'
                        html += '<tr style="background: #29c1c9;color:white;font-weight:400!important">'
                        html += '<th class="bold" colspan="50" style="text-align: center; font-size: 1.7rem; ">' + result.ADDRESS1 + '</th>'
                        html += '</tr>'
                        html += '<tr style="background: #29c1c9; color: white; font-weight: 400 !important;">';
                        html += '<th class="bold" colspan="50" style="text-align: center; font-size: 1.7rem; ">WORKERS SALARY SHEET FOR THE MONTH OF ' + MonthYear + '</th>';
                        html += '</tr>';
                        html += '<tr  style="border: 1px solid black;">'
                        html += '<td rowspan="2" class="bold">S.No.</td>'
                        html += '<td rowspan="2" class="bold">Name</td>'
                        html += '<td rowspan="2" class="bold">Employee Code</td>'
                       
                        html += '<td rowspan="2" class="bold">Department</td>'
                        html += '<td rowspan="2" class="bold">Sub Department</td>'
                        html += '<td rowspan="2" class="bold">NATURE OF EMPLOYMENT</td>'
                        html += '<td rowspan="2" class="bold">Actual Gross Salary</td>'
                        
                        html += '<td rowspan="2" class="bold">PR Payable Amount</td>'
                        html += '<td rowspan="2" class="bold">Paid Days</td>'

                        
                        /*html += '<td rowspan="2" class="bold">OT Hours</td>'*/
                        html += '<td rowspan="2" class="bold">Total Leave Taken ' + MonthYear + '</td>'
                        html += '<td rowspan="2" class="bold">Leave Carry forwarded from Previous Month</td>'
                        html += '<td rowspan="2" class="bold">Leave Allowed</td>'
                        html += '<td rowspan="2" class="bold">Total Available Leave till ' + MonthYear + '</td>'
                        html += '<td rowspan="2" class="bold">Leave Adjusted in ' + MonthYear + '</td>'
                        html += '<td rowspan="2" class="bold">Total Leave balance ' + MonthYear + '</td>'
                        html += '<td rowspan="2" class="bold">Leave Amount</td>'
                        html += '<td class="bold">Dinner Allowance</td>'
                        html += '<td class="bold">Lunch Allowance</td>'
                       /* html += '<td class="bold">Total</td>'*/
                        html += '<td rowspan="2" class="bold">Actual Wages Paid</td>'

                        html += '</tr>'

                        html += '</thead>'
                        html += '<tbody>'

                        for (var i = 0; i < Cols.length; i++) {
                            var data = Cols[i];
                            html += '<tr style="border: 1px solid black;">'
                            html += '<td>' + (i + 1) + '</td>'
                            html += '<td>' + data.EMP_NAME + '</td>'
                            html += '<td>' + data.EMP_ID + '</td>'
                           
                            html += '<td>' + data.Department + '</td>'
                            html += '<td>' + data.SubDepartment + '</td>'
                            html += '<td>' + data.NEType + '</td>'
                            html += '<td>' + data.GROSS + '</td>'
                            debugger
                            var ActualSalaryPerDay = 0;
                            var ActualsalaryPerHour = 0, PerHourSalary = 0, PerMinSalary = 0;
                            ActualSalaryPerDay = Number(data.GROSS) / 26;
                            PerHourSalary = Number(ActualSalaryPerDay / 8);
                            PerMinSalary = Number(PerHourSalary / 60);
                           
                            html += '<td>' + data.PRPayableAmount + '</td>'
                            var totalAbset = 0, calPermissionInDays=0;
                            if (Number(data.Absent) > 0) {
                                totalAbset = Number(data.Absent) - 1;
                            }

                            //const d = new Date();
                            //let month = d.getMonth() + 1;
                            //var TotalPaidDays = 0;
                            //if (MONTH_ID < month) {
                            //    TotalPaidDays = 26 - (totalAbset);
                            //    var TotalPaidDays = TotalPaidDays - Number(calPermissionInDays).toFixed(2);
                            //} else {
                            //    TotalPaidDays = data.Present + data.WeeklyOff + data.Absent + data.Holiday;
                            //    if (TotalPaidDays > 26) {
                            //        TotalPaidDays = 26 - (totalAbset);
                            //        var TotalPaidDays = TotalPaidDays - Number(calPermissionInDays).toFixed(2);
                            //    }

                            //    var TotalPaidDays = TotalPaidDays - totalAbset - Number(calPermissionInDays).toFixed(2);
                            //}

                            html += '<td>' + data.PaidDay + '</td>'
                            html += '<td>' + data.TotalLeaveTakenMonthWise + '</td>'
                            html += '<td>' + data.LeaveCarryforwarded + '</td>'
                            html += '<td>' + data.LeaveAllowed + '</td>'
                            html += '<td>' + data.TotalAvailableLeavetillMonth + '</td>'
                            html += '<td>' + data.LeaveAdjustedinMonth + '</td>'
                            html += '<td>' + data.EW_TotalLeavebalanceMonth + '</td>'
                            html += '<td>' + Number(ActualSalaryPerDay * Number(data.LeaveAdjustedinMonth)).toFixed(2) + '</td>'
                            html += '<td>' + data.DinnerAllowance + '</td>'
                            html += '<td>' + data.LunchAllowance + '</td>'
                            var IncentiveBonus = 0;
                            IncentiveBonus = Number(data.DinnerAllowance) + Number(data.LunchAllowance) + (Number(data.OverTime) * PerMinSalary)
                           /* html += '<td>' + IncentiveBonus.toFixed(0) + '</td>'*/

                            html += '<td>' + Number(data.PRPayableAmount + IncentiveBonus + data.Other).toFixed(0) + '</td>'
                            
                            html += '</tr>'

                           
                        }
                        html += '</tbody >'
                        
                        html += '</table>'
                        html += '</div>'

                    } else {

                        html += '<div class="text-center"><span>No data found.</span></div>';
                    }
                    $("#particalDiv").append(html + '<br>');
                },
            error:
                function (response) {
                    debugger;
                    alert("Error: " + response);
                }
        });
}


function onDepartmentChange() {
    var departmentId = $("#DEPT_ID option:selected").val();
    $.get('/Attendance/GetSubDepartmentByDepartmentId?departmentId=' + departmentId, function (data) {
        $('#SUBDEPT_ID').find('option').not(':first').remove();
        $.each(data, function (i, item) {
            $('#SUBDEPT_ID').append($('<option>', {
                value: item.SUBDEPT_ID,
                text: item.SUBDEPT_NAME
            }));
        });
        $('#SUBDEPT_ID').formSelect();
    });
}

