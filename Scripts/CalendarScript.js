$(document).ready(function () {
    intDroppables();
    displayCalendar()
});

function displayCalendar() {
    $.ajax({
        type: "POST",
        contentType: 'application/json; charset=utf-8',
        data: "{}",
        url: "CalendarService.asmx/getEventList",
        dataType: "json",
        success: function (data) {
            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay'
                },
                selectable: true,
                editable: true,
                droppable: true,
                draggable: true,
                lazyFetching: false,
                forceEventDuration: true,
                eventTextColor: 'Yellow',
                eventBackgroundColor: 'Purple',
                events:
                $.map(data.d, function (item, i) {
                    console.log(item);
                    var eventEndDate = new Object();
                    var event = new Object();
                    event.id = item.eventID,
                    event.start = new Date(item.eventStartDate),
                    event.end = new Date(item.eventEndDate),
                    event.title = item.eventTitle,
                    event.description = item.eventTopic,
                    event.allDay = false;
                    console.log(event);
                    return event;
                }),
                eventRender: function (event, element) {
                    element.attr("Topic", event.description),
                    element.qtip({
                        content: event.title + "<br>" + event.start.format('MM-DD h:mm') + " - " + event.end.format('MM-DD h:mm'),
                        position: { corner: { tootltip: 'bottomLeft', target: 'topRight' } },
                        style: {
                            border: {
                                width: 1,
                                radius: 3,
                                color: 'green'
                            },
                            padding: 10,
                            textAlign: 'left',
                            tip: true
                        }
                    });
                },
                eventAfterRender: function (event, element, view) {
                    if ($(this).data("qtip")) $(this).qtip('destroy');
                },
                eventResize: function (event, dayDelta, minuteDelta, revertFunc) {
                    if ($(this).data("qtip")) $(this).qtip('destroy');
                    //alert(event.title + " end time is now " + event.end.format('YYYY-MM-DD h:mm:ss'));
                    if (!confirm("Are you sure you want to change " + event.title + "'s time to "
                        + event.end.format('YYYY-MM-DD h:mm:ss'))) {
                        revertFunc();
                    }
                    else {
                        updateEvent(event);
                    }
                },
                eventDrop: function (event, dayDelta, minuteDelta, allDay, revertFunc) {
                    if ($(this).data("qtip")) $(this).qtip('destroy');
                    if (!confirm("Are you sure you want to change " + event.title + "'s date to "
                        + event.start.format('YYYY-MM-DD h:mm:ss') + " - " + event.end.format('YYYY-MM-DD h:mm:ss'))) {
                        revertFunc();
                    }
                    else {
                        updateEvent(event);
                    }
                    if ($(this).data("qtip")) $(this).qtip('destroy');
                },
                eventDurationEditable: true, // change an events duration by dragging!
                startEditable: true,
                eventAfterAllRender: function (view) { },
                drop: function (date) {
                    eventDropped(date, this);
                },
                eventReceive: function (event) {
                    alert("EVENT DROPPEEDD");
                },

                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    debugger;
                }
            });
        }
    });
}

function updateEvent(event) {
    var eventToSave = new Object();
    eventToSave.eventID = event.id;
    eventToSave.eventTitle = event.title;
    eventToSave.eventStartDate = event.start.format('YYYY-MM-DD h:mm:ss');
    eventToSave.eventEndDate = event.end.format('YYYY-MM-DD h:mm:ss');
    //eventToSave.eventStartDate = event.start.toLocaleString();
    //eventToSave.eventEndDate = event.end.toLocaleString();
    eventToSave.eventTopic = event.description;
    $.ajax({
        type: "POST",
        contentType: "application/json",
        data: "{eventData:" + JSON.stringify(eventToSave) + "}",
        url: "CalendarService.asmx/updateEvent",
        dataType: "json",
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            debugger;
        }
    });
}

function intButtons() {
    $('.btn').button();
}

function intDroppables() {
    $('#external-events .fc-event').each(function () {
        $(this).data('event', {
            title: $(this).text(),
            stick: true
        });
        $(this).draggable({
            zIndex: 999,
            revert: true,
            revertDuration: 0
        });
        var event_object = {
            title: $(this).text()
        };
        $(this).data('eventObject', event_object);
    });
}

function eventDropped(date, externalEvent) {
    var event_object;
    var copiedEventObject;
    var duration = 60;
    var endDate = new Date();
    endDate = date.add(1, 'h');
    event_object = $(externalEvent).data('eventObject');
    copiedEventObject = $.extend({}, event_object);
    copiedEventObject.start = date;
    copiedEventObject.end = endDate;
    copiedEventObject.allDay = false;
    copiedEventObject.id = getNewID();
    copiedEventObject.title = $(externalEvent).data('title');
    copiedEventObject.description = 'test';

    updateEvent(copiedEventObject);
    $('calendar').fullCalendar('renderEvent', copiedEventObject, true);

    //var dialog, form,
    //    dialog = $('#eventForm').dialog({
    //    })
}

function getNewID() {
    return new Date().getTime() + Math.floor(Math.random()) * 500;
}

function addEventFromDialog(date) {
    var eventToSave = new Object();
    eventToSave.eventID = 55;
    eventToSave.eventTitle = $('txtEventTitle').val();
    eventToSave.eventStartDate = $('txtEventStartDate').val(date.format('YYYY-MM-DD h:mm:ss'));
    eventToSave.eventEndDate = $('txtEventEndDate').val(date.format('YYYY-MM-DD h:mm:ss'));
    eventToSave.eventTopic = 'cool stuff';

    $.ajax({
        type: "POST",
        contentType: "application/json",
        data: "{eventData:" + JSON.stringify(eventToSave) + "}",
        url: "CalendarService.asmx/updateEvent",
        dataType: "json",
        success: function (data) {
            var events = new Array();
            $.map(data.d, function (item, i) {
                console.log(item);
                var eventEndDate = new Object();
                var event = new Object();
                event.id = item.eventID,
                event.start = new Date(item.eventStartDate),
                event.end = new Date(item.eventEndDate),
                event.title = item.eventTitle,
                event.description = item.eventTopic,
                event.allDay = false;
                events.push(event);
                console.log(event);
            });
            $('#calendar').fullCalendar('addEventSource', events);
            $('#eventForm').dialog('close');
        }
    });
}

//function intCreateEvent() {
//    $('#btnCreateEvent').bind('click', function () {
//        var templateEvent = $('#externalEventTemplate').clone();
//        var title = $("txtTitle").val();
//        var description = $("txtDescription").val();

//        $(templateEvent).attr('id', getUniqueID());
//    });
//}

//function getUniqueID(){
//    return new Date().getTime() + Math.floor(Math.random()) * 500;
//}

function onSuccess(response) {
    return response.d;
}

function onError(response) {
    console.log(Error);
}

//    var dialog, form,
//dialog = $('#eventForm').dialog({
//    autoOpen: false,
//    height: 300,
//    width: 350,
//    modal: true,
//    buttons: {
//        "Add Event": addEventFromDialog,
//        Cancel: function () {
//            dialog.dialog('close');
//        },
//        close: function () {
//            form[0].reset();
//        }

//    }

//});
//    form = dialog.find('form').on('submit', function (event) {
//        addEventFromDialog(date);
//    });

//    var dialog = new Object();
//    //$('#txtEventStartDate').val(date.format('YYYY-MM-DD h:mm:ss'));
//    //$('#txtEventTitle').val($(this).text);
//    dialog = $('#eventForm').dialog({
//        autoOpen: false,
//        title: "Add Event",
//        width: 500,
//        modal: true,
//        buttons: {
//            "Add": function () {
//                var eventToSave = new Object();
//                eventToSave.eventID = 55;
//                eventToSave.eventTitle = $('txtEventTitle').val();
//                eventToSave.eventStartDate = $('txtEventStartDate').val(date.format('YYYY-MM-DD h:mm:ss'));
//                eventToSave.eventEndDate = $('txtEventEndDate').val(date.format('YYYY-MM-DD h:mm:ss'));
//                eventToSave.eventTopic = 'cool stuff';

//                $.ajax({
//                    type: "POST",
//                    contentType: "application/json",
//                    data: "{eventData:" + JSON.stringify(eventToSave) + "}",
//                    url: "CalendarService.asmx/updateEvent",
//                    dataType: "json",
//                    success: function (data) {
//                        var events = new Array();
//                        $.map(data.d, function (item, i) {
//                            console.log(item);
//                            var eventEndDate = new Object();
//                            var event = new Object();
//                            event.id = item.eventID,
//                            event.start = new Date(item.eventStartDate),
//                            event.end = new Date(item.eventEndDate),
//                            event.title = item.eventTitle,
//                            event.description = item.eventTopic,
//                            event.allDay = false;
//                            events.push(event);
//                            console.log(event);
//                        });
//                        $('#calendar').fullCalendar('addEventSource', events);
//                        $('#eventForm').dialog('close');

//                    }
//                });

//            }

//        }
//        //$('#start').val(date.format('YYYY-MM-DD h:mm:ss'));
//    });
//    $('#calendar').fullCalendar('refetchEvents');
//},