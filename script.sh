echo "Checking errors from log folder..."
cd logs
errorFile=migration_error.log
if [ -f $errorFile ]; then
    errors=$(< $errorFile)
            
    echo "Error detected in migrations. Check migrationfiles"
    echo '\n\n'
    echo "Detected error(s):"
    echo $errors
            
    rm $errorFile
    exit 1
fi          

echo "No errors detected - continuing migration"