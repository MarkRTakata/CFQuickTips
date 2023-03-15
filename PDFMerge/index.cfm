<!DOCTYPE html>
<html lang="en">
<head>
    <title>Merge PDF Demo</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <style>
    body {
        padding:50px;
    }
    </style>
</head>
<body>
<button class="btn" hx-target = "#viewport" hx-get="merge.cfm" id="mergebutton" name="mergebutton">
    CLICK TO MERGE FILES
</button>
<div id="viewport"></div>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://unpkg.com/htmx.org@1.8.5"></script>
</body>
</html>