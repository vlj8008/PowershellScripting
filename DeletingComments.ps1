
param(
    $path = "C:\test"
)

#Create an array of the c# files from User chosen directory.

$csfiles = @(Get-ChildItem -Path $path -Exclude *aspx.designer.cs, *designer.cs -Filter *.cs   -Recurse)


# Function to delete comment lines

function DeleteCommentLines

{
    foreach($file in $csfiles)
    {

    # create array of comment lines. 

    $lines = @(Get-Content -Path $file|Where-Object{$_ -match"//"})

    # loop through comment lines and delete.
     
    foreach ($line in $lines)
    {

       
       # need code here to delete the line. 

       remove-item $line -Force
        
    }
    
    }
}

