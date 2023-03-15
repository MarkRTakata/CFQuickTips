<cfscript>
boolean function filterBySize(path, type, extension) {
    var sizeLimit = 0; //more than 10 KB
    var extensionList = "pdf";
    if(type is "dir") return false;
    if(listFindNoCase(extensionList,extension)) {
        var fileInfo = getFileInfo(path);
        var size = fileInfo.size;
    if(size >= sizeLimit) return true;
    }
    return false;
}
filteredResults = ArrayToList(directoryList(expandPath("pdf"), true, "path",filterBySize));
cfpdf(
    action = "merge",
    source = filteredResults,
    destination = "mergedFile.pdf",
    overwrite = "yes"
);
filteredOutput = ArrayToList(directoryList(expandPath("./"), false, "name",filterBySize));
writeOutput("<a target='_blank' href='" & filteredOutput & "'>" & filteredOutput & "</a>");
</cfscript>