# ##############################################################################
# filename : repeat-please-powershell.ps1
# arguments: 
#            -what  <what to say>
#            -times <how many times>
# author   : https://github.com/josemarsilva/
# pre-reqs :
#            * Powershell installed
#            * Set-ExecutionPolicy unrestricted
# remarks  :
#            * 2018-06-21 JosemarSilva Development
# ##############################################################################
#


# ##############################################################################
# BEGIN Functions
# ##############################################################################

# ##############################################################################
#
# ##############################################################################
function show-usage([String] $pMsgError) {
    Write-Output "Usage: repeat-please-powershell <parameters-arguments>"
    Write-Output "where <parameters arguments> are:"
    Write-Output "  -what  What does powershell have to say (*)"
    Write-Output "  -times 'n' times [1, 2, ..., n]"
    Write-Output ""        
    Write-Output "Error message: $pMsgError"
    Write-Output ""
    #
    exit(1) # return error
}

# ##############################################################################
#
# ##############################################################################
function get-parameter-argument([String] $pParamArg) {
    $numOfArgs = $PARAM_ARGS.Length
    for ($i=0; $i -lt $numOfArgs; $i++)
    {
        if ( $pParamArg.ToLower() -eq $PARAM_ARGS[$i].ToLower() -and $i -lt $numOfArgs -1 ) {
            return $PARAM_ARGS[($i+1)].ToLower()
        }
    }
    return ""
}


# ##############################################################################
#
# ##############################################################################
function get-dateReference() {
  [String]$strReturn = Get-Date -UFormat "%Y-%m-%d"
  return $strReturn
}


# ##############################################################################
# END Functions
# ##############################################################################


# ##############################################################################
# BEGIN main()
# ##############################################################################

#
# Get command line parameters arguments ...
#
$PARAM_ARGS=$args
[String]$WHAT = (get-parameter-argument "-what")
[int]$TIMES = (get-parameter-argument "-times")
 
#
# Parse and validade command line parameters arguments ...
#
if ("$WHAT" -eq "") {
    show-usage "Undefined '-what' parameter argument"
}

#
# Loop repeat ...
#
for ($i=0; $i -lt $TIMES; $i++)
{
  Write-Output $WHAT
}


# ##############################################################################
# END main()
# ##############################################################################
