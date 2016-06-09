#!/bin/bash
# @author Exadra37(Paulo Silva) <exadra37ingmailpointcom>
# @since  2016/05/21
# @link   http://exadra37.com

set -e

#################################################################################################################################################################
# Declare Variables
#################################################################################################################################################################

    script_path=$( cd "$( dirname "$0" )" && pwd )


#################################################################################################################################################################
# Sourcing Dependencies
#################################################################################################################################################################

    source "${script_path}/../vendor/exadra37-bash/pretty-print/src/sourcing/pretty-print-trait.source.sh"


#################################################################################################################################################################
# Functions
#################################################################################################################################################################

    function printPackageInfo
    {
        local package="$1"
        local version="$2"
        local license="$3"
        local code_source="$4"
        local docs="$5"

        Print_Line_Break
        Print_Bold_Label_With_Text "Package: " "$package" "yellow"
        Print_Bold_Label_With_Text "Version: " "$version" "yellow"
        Print_Bold_Label_With_Text "License: " "$license" "yellow"
        Print_Bold_Label_With_Text "Code Source: " "$code_source" "yellow"
        Print_Bold_Label_With_Text "Docs: " "$docs" "yellow"

        Print_Author
        Print_Author_Links
    }

    function Print_Author
    {
        Print_Line_Break
        Print_Bold_Label_With_Text "Author: " "Exadra37(Paulo Silva)"
    }

    function Print_Author_Links
    {
        Print_Bold_Title ">>> Follow me in:"
        Print_Bold_Label_With_Text "Github: " "https://github.com/Exadra37" "yellow"
        Print_Bold_Label_With_Text "Gitlab: " "https://gitlab.com/u/exadra37" "yellow"
        Print_Bold_Label_With_Text "Linkedin: " "https://uk.linkedin.com/in/exadra37" "yellow"
        Print_Bold_Label_With_Text "Twitter: " "https://twitter.com/Exadra37" "yellow"
        Print_Line_Break
    }
