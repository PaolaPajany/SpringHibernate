
// validate form from html
function validate()
{
    var un = document.getElementById("username").value;
    var pw = document.getElementById("password").value;
    if(un === "" && pw === "" ||un === pw)
    { alert("Validation failed: please check name & password.");
        return false;
    }
    else
    { alert("Validation succeeded"); }
}



