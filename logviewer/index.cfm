<cfscript>
boolean function filterBySize(path, type, extension) {
    var sizeLimit = 0; //more than 10 KB
    var extensionList = "log";
    if(type is "dir") return false;
    if(listFindNoCase(extensionList,extension)) {
        var fileInfo = getFileInfo(path);
        var size = fileInfo.size;
    if(size >= sizeLimit) return true;
    }
    return false;
}
filteredResults = directoryList(expandPath("../../logs"), true, "name",filterBySize);
function buildLogDropdown(arrayInput){
    for (item in arrayInput){
        writeOutput("<option value='");
        writeOutput(item);
        writeOutput("'>")
        writeOutput(item);
        writeOutput("</option>");
    }
}
</cfscript>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Logviewer Demo</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    
    <style>
        body {
            padding-left: 50px;
            padding-right: 50px;
            padding-top: 50px;
            padding-bottom: 50px;
            background-color: linen;
        }
        .logview {
            position: absolute;
            top: 100px;
            left: 60px;
            right: 60px;
            width: calc(100vw - 120);
            height: calc(100vh - 160px);
            border: solid 1px red;
            overflow-x: hidden;
            overflow-y: scroll;
            background-color: white;
            display: flex;
            flex-direction: column-reverse;
        }
    </style>
</head>
<body>
<form name="logform" id="logform">
    <select name="logToView">
    <cfscript>
        buildLogDropdown(filteredResults);
    </cfscript>
    </select>
    <button type="button" hx-post="viewlog.cfm" hx-target="#something">View Log</button>
</form>
<div class="logview" id="something" name="something"></div>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://unpkg.com/htmx.org@1.8.5"></script>
</body>
</html>