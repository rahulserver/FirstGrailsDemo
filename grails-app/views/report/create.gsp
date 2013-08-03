<%@ page import="firstgrailsdemo.Report" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <g:set var="entityName" value="${message(code: 'report.label', default: 'Report')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<a href="#create-report" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="create-report" class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${reportInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${reportInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form action="save">
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save"
                            value="${message(code: 'default.button.create.label', default: 'Create')}"/>
        </fieldset>
    </g:form>
    <div class="employmentHistory">
        <table class="employmentHistoryForm">
            <tr>

                    <th>Name</th>
                    <th>Position</th>
                    <th>Action</th>

            </tr>
            <tr class = "row">
                <td>
                    <g:textField id="name" name="company" ></g:textField></td>
                <td>
                    <g:textField id="position" name="position"  ></g:textField></td>
                <td><input type="button" class="deleteThisRow"  value="Delete"/></td>
            </tr>
        </table>
    <g:textField name="sumCompany" id="destination" ></g:textField>
    </div>
    <input type="button" id="btnAddMore"  value="add more"/>
    <script type="text/javascript">
        var rowIndex=0;
        var colIndex=0;
        $(document).ready(function(){

            var idCounter=0;

            $('#btnAddMore').click(function(){
                var clonedSection = $(".row").clone();
                clonedSection.children().children().addClass("col" + idCounter);
                $('.employmentHistoryForm tr:last').after('<tr class = "row">' + clonedSection.html() + '</tr>');
                idCounter++;
            });

            //when you click on the button called "delete", the function inside will be triggered.
            $('.deleteThisRow').live('click',function(){
                var rowLength = $('.row').length;
                //this line makes sure that we don't ever run out of rows.
                if(rowLength > 1){
                    deleteRow(this);
                    idCounter--;
                }
            });

            function deleteRow(currentNode){
                $(currentNode).parent().parent().remove();
            }
            index++;
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
        $(document).on("change", "input[class *= 'company']", function() {
            var sum1 = 0;
            var sum2=0;

            $("input[class *= 'company']").each(function(){
                sum1 += +$(this).val();
            });
            $("input[class *= 'pos']").each(function(){
                sum2 += +$(this).val();
            });

            $("#destination").val(sum1+sum2);
        });
    </script>
</div>
</body>
</html>
