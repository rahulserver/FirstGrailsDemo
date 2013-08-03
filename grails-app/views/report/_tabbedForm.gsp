<%@ page import="firstgrailsdemo.Report" %>
<script language="JavaScript">
    function toggle(source) {
        checkboxes = document.getElementsByName('foo');
        for (var i = 0, n = checkboxes.length; i < n; i++) {
            checkboxes[i].checked = source.checked;
        }
    }
    function isNumberKey(evt) {
        var charCode = (evt.which) ? evt.which : event.keyCode
        if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;
        return true;
    }
    $(function () {
        $('#btnDelete').on('click', function () {
            $('.row').has('input[name=foo]:checked:not(.Row0)').remove();
        });

    });
    $(function () {
        $('#btnCalculate').on('click', function () {
            var T3 = 0, T4 = 0, T5 = 0, T6 = 0, T7 = 0, T8 = 0, T9 = 0, T10 = 0, T11 = 0, T12 = 0, TCol = 0;
            var schoolCount = 0;
            $("input[name = 'School']").each(function () {
                if ($(this).val().length == 0) {
                    $(this).val("School" + schoolCount);
                    schoolCount = schoolCount + 1;
                }
            });

            $("input[name = 'Class3']").each(function () {

                if (!(parseInt($(this).val()) == NaN)) {

                    T3 += parseInt($(this).val());
                }
            });

            $("#Class3T").val(T3);

            $("input[name = 'Class4']").each(function () {

                if (!(parseInt($(this).val()) == NaN)) {

                    T4 += parseInt($(this).val());
                }
            });

            $("#Class4T").val(T4);

            $("input[name = 'Class5']").each(function () {

                if (!(parseInt($(this).val()) == NaN)) {

                    T5 += parseInt($(this).val());
                }
            });

            $("#Class5T").val(T5);

            $("input[name = 'Class6']").each(function () {

                if (!(parseInt($(this).val()) == NaN)) {

                    T6 += parseInt($(this).val());
                }
            });

            $("#Class6T").val(T6);

            $("input[name = 'Class7']").each(function () {

                if (!(parseInt($(this).val()) == NaN)) {

                    T7 += parseInt($(this).val());
                }
            });

            $("#Class7T").val(T7);

            $("input[name = 'Class8']").each(function () {

                if (!(parseInt($(this).val()) == NaN)) {

                    T8 += parseInt($(this).val());
                }
            });

            $("#Class8T").val(T8);

            $("input[name = 'Class9']").each(function () {

                if (!(parseInt($(this).val()) == NaN)) {

                    T9 += parseInt($(this).val());
                }
            });

            $("#Class9T").val(T9);

            $("input[name = 'Class10']").each(function () {

                if (!(parseInt($(this).val()) == NaN)) {

                    T10 += parseInt($(this).val());
                }
            });

            $("#Class10T").val(T10);

            $("input[name = 'Class11']").each(function () {

                if (!(parseInt($(this).val()) == NaN)) {

                    T11 += parseInt($(this).val());
                }
            });

            $("#Class11T").val(T11);

            $("input[name = 'Class12']").each(function () {

                if (!(parseInt($(this).val()) == NaN)) {

                    T12 += parseInt($(this).val());
                }
            });

            $("#Class12T").val(T12);

            $("input[name = 'College']").each(function () {

                if (!(parseInt($(this).val()) == NaN)) {

                    TCol += parseInt($(this).val());
                }
            });

            $("#CollegeT").val(TCol);

        });

    });
    function onShowTab(index) {
        var numberTabs = 3;
        for (var i = 1; i < (numberTabs + 1); i++) {

            var tabTitle = document.getElementById('tab-title-' + i);
            tabTitle.style.backgroundColor = "";
            tabTitle.style.borderBottom = "";

            var tabSheet = document.getElementById('tab' + i);
            tabSheet.style.display = "none";
        }

        var tabTitle = document.getElementById('tab-title-' + index);
        tabTitle.style.backgroundColor = "#FFFABF";
        tabTitle.style.borderBottom = "0px";

        var tabSheet = document.getElementById('tab' + index);
        tabSheet.style.display = "block";
    }

</script>
<table>
    <tr>
        <table border="0" cellspacing="0" cellpadding="0">
            <tbody>
            <tr>
                <td>&nbsp;&nbsp;</td>
                <td id="tab-title-1" style="background-color: rgb(255, 250, 191); border-bottom-width: 0px;"
                    class="tf_tab">
                    <a href="#" class="tb_label" style="color:#404040;font-weight:bold;text-decoration:none;"
                       onclick="onShowTab(1)">Tab1</a>
                </td>
                <td class="tf_separator">&nbsp;</td>
                <td id="tab-title-2" class="tf_tab" style="">
                    <a href="#" class="tb_label" style="color:#404040;font-weight:bold;text-decoration:none;"
                       onclick="onShowTab(2)">Tab2</a>
                </td>
                <td class="tf_separator">&nbsp;</td>
                <td id="tab-title-3" class="tf_tab" style="">
                    <a href="#" class="tb_label" style="color:#404040;font-weight:bold;text-decoration:none;"
                       onclick="onShowTab(3)">Tab3</a>
                </td>
                <td class="tf_separator">&nbsp;</td>
                <td class="tf_separator" style="width:100%">&nbsp;</td>
            </tr>
            </tbody>
        </table>
    </tr>
    <tr>
        <td>
            <div id="tab1" style="display:block;" class="employmentHistory">
                <table class="employmentHistoryForm">
                    <tr>
                        <th>School</th>
                        <th>Class <br/>3</th>
                        <th>Class <br/>4</th>
                        <th>Class <br/>5</th>
                        <th>Class <br/>6</th>
                        <th>Class <br/>7</th>
                        <th>Class <br/>8</th>
                        <th>Class <br/>9</th>
                        <th>Class <br/>10</th>
                        <th>Class <br/>11</th>
                        <th>Class <br/>12</th>
                        <th>College</th>
                        <th>All<input type="checkbox" onClick="toggle(this)"/></th>

                    </tr>
                    <tr class="row">
                        <td><g:textField name="School" class="Row0"></g:textField></td>
                        <td><g:textField name="Class3" class="Row0" value="0"
                                         onkeypress="return isNumberKey(event)"></g:textField></td>
                        <td><g:textField name="Class4" class="Row0" value="0"
                                         onkeypress="return isNumberKey(event)"></g:textField></td>
                        <td><g:textField name="Class5" class="Row0" value="0"
                                         onkeypress="return isNumberKey(event)"></g:textField></td>
                        <td><g:textField name="Class6" class="Row0" value="0"
                                         onkeypress="return isNumberKey(event)"></g:textField></td>
                        <td><g:textField name="Class7" class="Row0" value="0"
                                         onkeypress="return isNumberKey(event)"></g:textField></td>
                        <td><g:textField name="Class8" class="Row0" value="0"
                                         onkeypress="return isNumberKey(event)"></g:textField></td>
                        <td><g:textField name="Class9" class="Row0" value="0"
                                         onkeypress="return isNumberKey(event)"></g:textField></td>
                        <td><g:textField name="Class10" class="Row0" value="0"
                                         onkeypress="return isNumberKey(event)"></g:textField></td>
                        <td><g:textField name="Class11" class="Row0" value="0"
                                         onkeypress="return isNumberKey(event)"></g:textField></td>
                        <td><g:textField name="Class12" class="Row0" value="0"
                                         onkeypress="return isNumberKey(event)"></g:textField></td>
                        <td><g:textField name="College" class="Row0" value="0"
                                         onkeypress="return isNumberKey(event)"></g:textField></td>
                        <td><input type="checkbox" value="Delete" name="foo" class="Row0"/></td>
                    </tr>
                    <tr class="HorizontalRule">
                        <td><hr/></td>
                        <td><hr/></td>
                        <td><hr/></td>
                        <td><hr/></td>
                        <td><hr/></td>
                        <td><hr/></td>
                        <td><hr/></td>
                        <td><hr/></td>
                        <td><hr/></td>
                        <td><hr/></td>
                        <td><hr/></td>
                        <td><hr/></td>
                        <td><hr/></td>
                    </tr>
                    <tr class="footer">
                        <td><bold>Totals</bold></td>
                        <td><g:textField id="Class3T" name="Class3T" class="Total" readonly="true"></g:textField></td>
                        <td><g:textField id="Class4T" name="Class4T" class="Total" readonly="true"></g:textField></td>
                        <td><g:textField id="Class5T" name="Class5T" class="Total" readonly="true"></g:textField></td>
                        <td><g:textField id="Class6T" name="Class6T" class="Total" readonly="true"></g:textField></td>
                        <td><g:textField id="Class7T" name="Class7T" class="Total" readonly="true"></g:textField></td>
                        <td><g:textField id="Class8T" name="Class8T" class="Total" readonly="true"></g:textField></td>
                        <td><g:textField id="Class9T" name="Class9T" class="Total" readonly="true"></g:textField></td>
                        <td><g:textField id="Class10T" name="Class10T" class="Total" readonly="true"></g:textField></td>
                        <td><g:textField id="Class11T" name="Class11T" class="Total" readonly="true"></g:textField></td>
                        <td><g:textField id="Class12T" name="Class12T" class="Total" readonly="true"></g:textField></td>
                        <td><g:textField id="CollegeT" name="CollegeT" class="Total" readonly="true"></g:textField></td>
                        <td></td>
                    </tr>
                </table>
                <input type="button" id="btnAddMore" value="Add More"/>
                <input type="text" id="NumberToAdd" value="0" onkeypress="return isNumberKey(event)"/>
                <input type="button" id="btnDelete" value="Remove Selected"/>
                <input type="button" id="btnCalculate" value="Calculate"/>

            </div>

            <div id="tab2" style="display:none;">
                <table class="cellVisible" cellspacing="1">
                    <tr>

                        <th colspan="3">
                            Class 3
                        </th>
                        <th colspan="3">
                            Class 4
                        </th>
                        <th colspan="3">
                            Class 5
                        </th>
                        <th colspan="3">
                            Class 6
                        </th>
                        <th colspan="3">
                            Class 7
                        </th>
                        <th colspan="3">
                            Class 8
                        </th>
                        <th colspan="3">
                            Class 9
                        </th>
                        <th colspan="3">
                            Class 10
                        </th>
                        <th colspan="3">
                            Class 11
                        </th>
                        <th colspan="3">
                            Class 12
                        </th>
                        <th colspan="3">
                            College
                        </th>
                    </tr>
                    <tr>
                        <td>First</td>
                        <td>Second</td>
                        <td>Third</td>

                        <td>First</td>
                        <td>Second</td>
                        <td>Third</td>

                        <td>First</td>
                        <td>Second</td>
                        <td>Third</td>

                        <td>First</td>
                        <td>Second</td>
                        <td>Third</td>

                        <td>First</td>
                        <td>Second</td>
                        <td>Third</td>

                        <td>First</td>
                        <td>Second</td>
                        <td>Third</td>

                        <td>First</td>
                        <td>Second</td>
                        <td>Third</td>

                        <td>First</td>
                        <td>Second</td>
                        <td>Third</td>

                        <td>First</td>
                        <td>Second</td>
                        <td>Third</td>

                        <td>First</td>
                        <td>Second</td>
                        <td>Third</td>

                        <td>First</td>
                        <td>Second</td>
                        <td>Third</td>
                    </tr>
                </table>
            </div>

            <div id="tab3" style="display:none;">This is tab3 area</div>
        </td>
    </tr>

</table>

<script type="text/javascript">
    var rowIndex = 0;
    var colIndex = 0;
    $(document).ready(function () {

        var idCounter = 1;

        $('#btnAddMore').click(function () {
            var i=parseInt(document.getElementById("NumberToAdd").value);
            if(i!=NaN){
                for(var j=0;j<i;j++){
                    var clonedSection = $(".row").clone();
                    clonedSection.children().children().removeClass();
                    clonedSection.children().children().addClass("Row" + idCounter);
                    $('.employmentHistoryForm tr').eq(-2).before('<tr class = "row">' + clonedSection.html() + '</tr>');
                    idCounter++;
                }
            }
        });

        //when you click on the button called "delete", the function inside will be triggered.
        $('.deleteThisRow').live('click', function () {
            var rowLength = $('.row').length;
            //this line makes sure that we don't ever run out of rows.
            if (rowLength > 1) {
                deleteRow(this);
                idCounter--;
            }
        });

        function deleteRow(currentNode) {
            $(currentNode).parent().parent().remove();
        }

    });
    //        $(document).on("change", "input[class *= 'company']", function() {
    //            var i = 1;
    //            $("button").click(function() ​​​{
    //                $(".employmentHistoryForm tr:first").clone().find("input").each(function() {
    //                    $(this).val('').attr('id', function(_, id) { return id + i });
    //                }).end().appendTo(".employmentHistoryForm");
    //                i++;
    //            })​;
    //        });
    $(document).on("change", "input[class *= 'company']", function () {
        var sum1 = 0;
        var sum2 = 0;

        $("input[class *= 'company']").each(function () {
            sum1 += +$(this).val();
        });
        $("input[class *= 'pos']").each(function () {
            sum2 += +$(this).val();
        });

        $("#destination").val(sum1 + sum2);
    });
</script>

%{--<div id="container">--}%
%{--<div id="content">--}%
%{--<ul id="info-nav">--}%
%{--<li><a href="#equipment_details"><span>Tab1</span></a></li>--}%
%{--<li><a href="#job_costs"><span>Tab2</span></a></li>--}%
%{--</ul>--}%
%{--<div id="info">--}%
%{--<form action="index.html" method="post" id="form1" name="form1" class="formfields">--}%
%{--<div id="equipment_details" class="hide">--}%

%{--<table border="0" cellspacing="1" cellpadding="2" id="tbl_equipment_details" width="100%">--}%
%{--<tr>--}%
%{--<td width="23%" class="txt-right">XXXX</td>--}%
%{--<td width="31%"><input type="text" name="" id="qw" /></td>--}%
%{--</tr>--}%
%{--<tr>--}%
%{--<td class="txt-right">XXX</td>--}%
%{--<td><input type="checkbox" id="" value="1" name="" checked=""></td>--}%
%{--</tr>--}%
%{--<tr>--}%
%{--<td class="txt-right">XXX XXX</td>--}%
%{--<td><input type="text" value="" name="" id="we" /></td>--}%
%{--</tr>--}%
%{--</table>--}%
%{--<!--tbl_equipment_details closed-->--}%
%{--</div><!--div equipment_details closed-->--}%

%{--<!--<div id="specifications" class="hide">-->--}%
%{--<div id="job_costs" class="hide">--}%
%{--<table border="0" cellspacing="1" cellpadding="2" width="100%" id="tbl_specifications">--}%
%{--<tr>--}%
%{--<td width="18%" class="txt-right">Notes</td>--}%
%{--<td colspan="2" valign="top">--}%
%{--<textarea rows="3" id="description"  cols="60" name=""></textarea>                            </td>--}%
%{--</tr>--}%
%{--<tr>--}%
%{--<td class="txt-right">XXX</td>--}%
%{--<td width="39%">--}%
%{--<select name="purchased_from">--}%
%{--<option selected></option>--}%
%{--<option value="xxx">xxx1</option>--}%
%{--<option value="xxx">xxx2</option>--}%
%{--</select>                            </td>--}%
%{--<td class="txt-right">&nbsp;</td>--}%
%{--</tr>--}%
%{--</table>--}%
%{--<!--</div>--}%

%{--<div id="job_costs" class="hide">-->--}%
%{--<table border="0" cellspacing="0" cellpadding="0" width="100%">--}%
%{--<tr>--}%
%{--<td align="center">&nbsp;</td>--}%
%{--</tr>--}%
%{--<tr>--}%
%{--<td align="center">--}%
%{--<div>--}%
%{--<input value="Cancel" name="qq" type="button"> &nbsp;--}%
%{--<input value="Save Changes" name="ww" type="submit">--}%
%{--</div>                            </td>--}%
%{--</tr>--}%
%{--</table>--}%
%{--</div><!--div feedback closed-->--}%
%{--</form>--}%
%{--</div><!--div info closed-->--}%
%{--</div><!--div content closed-->--}%
%{--</div><!--div container closed-->--}%

