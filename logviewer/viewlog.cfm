<cfscript>
function readLogToScreen(){

    var buildLogPath = "C:\ProjectFortuna\cfusion\logs\" & FORM.logToView;
    cffile(file=buildLogPath, action="read", variable="logContents");
    logContents = rereplace(logContents, '"Error"', '<br /><br />******"ERROR"',"all");
    logContents = rereplace(logContents, 'Jan', '<br /><br />******Jan',"all");
    logContents = rereplace(logContents, 'Feb', '<br /><br />******Jan',"all");
    logContents = rereplace(logContents, 'Mar', '<br /><br />******Jan',"all");
    writeOutput(logContents);

}
readLogToScreen();
</cfscript>
