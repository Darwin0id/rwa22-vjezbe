<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Zadatak01.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <!-- TITLE -->
    <title>Zadatak 01</title>

    <!-- BOOTSTRAP -->
    <link href="Content/bootstrap.min.css" rel="stylesheet"/>

    <!-- CUSTOM CSS -->
    <style>
        fieldset { border: 1px solid #ced4da; padding: inherit; border-radius: 4px; } 
        fieldset > legend { float: initial; width: auto; padding: revert; font-size: initial; margin: 0; }
    </style>

</head>
<body>

    <!-- FORM -->
    <form class="container p-4">
     <fieldset>
         <legend>Login</legend>
          <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" name="username" class="form-control" id="username" />
          </div>
          <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" name="password" class="form-control" id="password" />
          </div>
          <button type="submit" class="btn btn-primary">Submit</button>
      </fieldset>
    </form>
    <!-- // -->

    <!-- RESULTS -->
    <div id="results" class="container p-4">
      <fieldset>
         <legend>GET Request</legend>

          <div class="mb-3">
            <label class="form-label">Username:</label>
            <label class="fw-bold" id="lblUsername"></label>
          </div>

          <div>
            <label class="form-label">Password:</label>
            <label class="fw-bold" id="lblPassword"></label>
          </div>
         
        </fieldset>
    </div>
    <!-- // -->

    <!-- JQUERY -->
    <script src="Scripts/jquery-3.6.0.min.js"></script>

    <!-- BOOTSTRAP -->
    <script src="Scripts/bootstrap.min.js"></script>

    <!-- JS -->
    <script>

        // ELEMENTS
        const results = "#results";
        const lblUsername = "#lblUsername";
        const lblPassword = "#lblPassword";

        // DOCUMENT ON READY
        $(document).ready(function () {
            const url = new URL(window.location.href);
            const searchParams = new URLSearchParams(url.search);

            const username = searchParams.get("username");
            const password = searchParams.get("password");

            if (username && password) {
                $(lblUsername).html(username);
                $(lblPassword).html(password);
                $(results).show();
            } else {
                $(results).hide();
            }
        });
    </script>
    <!-- // -->
</body>
</html>
