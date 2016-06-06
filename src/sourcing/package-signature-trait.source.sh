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

    source "${script_path}/../vendor/exadra37-bash/package-manager/src/sourcing/package-manager-trait.source.sh"

    vendor_name="exadra37-bash"

    Auto_Source_Dependency "${vendor_name}" "pretty-print" "0.1.0" "sourcing/pretty-print-trait.source.sh"


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
        Print_Bold_Label_With_Text "Package: " "$package"
        Print_Bold_Label_With_Text "Version: " "$version"
        Print_Bold_Label_With_Text "License: " "$license"
        Print_Bold_Label_With_Text "Code Source: " "$code_source"
        Print_Bold_Label_With_Text "Docs: " "$docs"

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
        Print_Title ">>> Follow me in:"
        Print_Bold_Label_With_Text "Github: " "https://github.com/Exadra37"
        Print_Bold_Label_With_Text "Gitlab: " "https://gitlab.com/u/exadra37"
        Print_Bold_Label_With_Text "Linkedin: " "https://uk.linkedin.com/in/exadra37"
        Print_Bold_Label_With_Text "Twitter: " "https://twitter.com/Exadra37"
        Print_Line_Break
    }
