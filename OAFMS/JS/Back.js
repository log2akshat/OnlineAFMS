    function backPage()
    {
        // check if it is a first page in browser history
        if(history.length > 0)
        {
            // go back it browser history exists.
            history.back();
        }
        else
        {
            // show alert message box if browser history has 0 items.
            alert("This is your first page in Browser History.");
        }
    }
