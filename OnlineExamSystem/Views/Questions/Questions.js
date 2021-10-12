
    $(document).ready(function () {
        var arrRadio = $("input[name='IsCorrext']")

        $("input[name='IsCorrext']").each(function (item, index) {

        $(index).change(function () {
            arrRadio.each(function (item, index1) {
                $("#hdnIsCorrect" + $(index1).attr("id")).val("False")
            })
            $("#hdnIsCorrect" + $(index).attr("id")).val($(index).prop('checked') ? "True" : "False")
        })
    })
    })
