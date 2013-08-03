<%@ page import="firstgrailsdemo.Report" %>
<script language="JavaScript">
    function toggle(source) {
        checkboxes = document.getElementsByName('foo');
        for(var i=0, n=checkboxes.length;i<n;i++) {
            checkboxes[i].checked = source.checked;
        }
    }
    function isNumberKey(evt){
        var charCode = (evt.which) ? evt.which : event.keyCode
        if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;
        return true;
    }

</script>

<div class="employmentHistory" >
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
            <td><g:textField name="School" class="Row0" ></g:textField></td>
            <td><g:textField name="Class3" class="Row0" onkeypress="return isNumberKey(event)"></g:textField></td>
            <td><g:textField name="Class4" class="Row0" onkeypress="return isNumberKey(event)"></g:textField></td>
            <td><g:textField name="Class5" class="Row0" onkeypress="return isNumberKey(event)"></g:textField></td>
            <td><g:textField name="Class6" class="Row0" onkeypress="return isNumberKey(event)"></g:textField></td>
            <td><g:textField name="Class7" class="Row0" onkeypress="return isNumberKey(event)"></g:textField></td>
            <td><g:textField name="Class8" class="Row0" onkeypress="return isNumberKey(event)"></g:textField></td>
            <td><g:textField name="Class9" class="Row0" onkeypress="return isNumberKey(event)"></g:textField></td>
            <td><g:textField name="Class10" class="Row0" onkeypress="return isNumberKey(event)"></g:textField></td>
            <td><g:textField name="Class11" class="Row0" onkeypress="return isNumberKey(event)"></g:textField></td>
            <td><g:textField name="Class12" class="Row0" onkeypress="return isNumberKey(event)"></g:textField></td>
            <td><g:textField name="College" class="Row0" onkeypress="return isNumberKey(event)"></g:textField></td>
            <td><input type="checkbox"  value="Delete" name="foo"/></td>
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
            <td><g:textField name="School" class="Total" readonly="true"></g:textField></td>
            <td><g:textField name="Class3" class="Total" readonly="true"></g:textField></td>
            <td><g:textField name="Class4" class="Total" readonly="true"></g:textField></td>
            <td><g:textField name="Class5" class="Total" readonly="true"></g:textField></td>
            <td><g:textField name="Class6" class="Total" readonly="true"></g:textField></td>
            <td><g:textField name="Class7" class="Total" readonly="true"></g:textField></td>
            <td><g:textField name="Class8" class="Total" readonly="true"></g:textField></td>
            <td><g:textField name="Class9" class="Total" readonly="true"></g:textField></td>
            <td><g:textField name="Class10" class="Total" readonly="true"></g:textField></td>
            <td><g:textField name="Class11" class="Total" readonly="true"></g:textField></td>
            <td><g:textField name="Class12" class="Total" readonly="true"></g:textField></td>
            <td><g:textField name="College" class="Total" readonly="true"></g:textField></td>
            <td></td>
        </tr>
    </table>
</div>
<input type="button" id="btnAddMore" value="add more"/>
<script type="text/javascript">
    var rowIndex = 0;
    var colIndex = 0;
    $(document).ready(function () {

        var idCounter = 1;

        $('#btnAddMore').click(function () {
            var clonedSection = $(".row").clone();
            clonedSection.children().children().removeClass();
            clonedSection.children().children().addClass("Row" + idCounter);
            $('.employmentHistoryForm tr').eq(-2).before('<tr class = "row">' + clonedSection.html() + '</tr>');
            idCounter++;
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
