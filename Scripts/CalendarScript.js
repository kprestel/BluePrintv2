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
                selectHelper: true,
                select: function (start, end) {
                    showPopUp(start, end);
                },
                editable: true,
                droppable: true,
                draggable: true,
                lazyFetching: false,
                defaultTimedEventDuration: '01:00:00',
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
                    //element.attr("Topic", event.description),
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
                disableResizing: true,
                startEditable: true,
                eventAfterAllRender: function (view) { },
                drop: function (date) {
                    eventDropped(date, this);
                },
                eventReceive: function (event) {
                    updateEvent(event);
                },
                eventClick: function (event) {
                    showEventClickedPopUp(event);
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
    copiedEventObject.description = "teste";

    $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
}

function showEventClickedPopUp(event) {
    $("#eventForm").dialog({
        autoOpen: false,
        height: 300,
        width: 350,
        modal: true,
        buttons: {
            "Add Event": function () {
                var copiedEvent = new Object();
                copiedEvent.id = event.id;
                copiedEvent.title = $("#eventForm #txtEventTitle").val();
                copiedEvent.start = moment(new Date($("#eventForm #txtEventStartDate").val()));
                copiedEvent.end = moment(new Date($("#eventForm #txtEventEndDate").val()));
                copiedEvent.description = $("#eventForm #txtEventDescription").val();
                updateEvent(copiedEvent);
                $('#calendar').fullCalendar('removeEvents', event.id);
                $('#calendar').fullCalendar('refetchEvents');
                $('#calendar').fullCalendar('renderEvent', copiedEvent, true);
                $('#eventForm').dialog('close');
            }
        }
    });

    $("#eventForm #txtEventTitle").val();
    $("#eventForm").find("#btnAddEvent").click(function (e) {
        e.preventDefault();
        updateEvent(event);
    });
    $("#eventForm #txtEventDescription").val(event.description);
    $("#eventForm #txtEventTitle").val(event.title);
    $("#eventForm #txtEventStartDate").val(event.start.format('YYYY-MM-DD h:mm:ss'));
    $("#eventForm #txtEventEndDate").val(event.end.format('YYYY-MM-DD h:mm:ss'));
    $("#eventForm").dialog('open');
}

function showDroppedEventPopUp(event) {
    $("#eventForm").dialog({
        autoOpen: false,
        height: 300,
        width: 350,
        modal: true,
    });

    $("#txtEventTitle").val(event.title);
    $("txtEventStartDate").val(event.start);
    $("txtEventEndDate").val(event.end);
    $("eventForm").dialog('open');
}
function showPopUp(start, end) {
    $("#eventForm").dialog({
        autoOpen: false,
        height: 300,
        width: 350,
        modal: true,
        buttons: {
            "Add Event": function () {
                addEventFromDialog();
            }
        }
    });

    $("#eventForm #txtEventTitle").val();
    $("#eventForm").find("#btnAddEvent").click(function () {
        addEventFromDialog();
    });
    $("#eventForm #txtEventStartDate").val(start.format('MM-DD-YYYY h:mm'));
    $("#eventForm #txtEventEndDate").val(start.add(1, 'h').format('MM-DD-YYYY h:mm'));
    $("#eventForm").dialog('open');
}
function getNewID() {
    return new Date().getTime() + Math.floor(Math.random());
}

function addEventFromDialog() {
    var eventToSave = new Object();
    var event = new Object();
    eventToSave.eventID = event.id = 16;
    eventToSave.eventTitle = event.title = $('#txtEventTitle').val();
    event.start = $('#txtEventStartDate').val();
    eventToSave.eventStartDate = $('#eventForm #txtEventStartDate').val();
    event.end = $('#txtEventEndDate').val();
    eventToSave.eventEndDate = $('#txtEventEndDate').val();
    eventToSave.eventTopic = event.description = $('#txtEventDescription').val();

    $.ajax({
        type: "POST",
        contentType: "application/json",
        data: "{eventData:" + JSON.stringify(eventToSave) + "}",
        url: "CalendarService.asmx/updateEvent",
        dataType: "json",
        success: function () {
            //updateEventSource(data);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            debugger;
        }
    });
}

function updateEventSource(data) { // delete?
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

function onSuccess(response) {
    return response.d;
}

function onError(response) {
    console.log(Error);
}