#Invoke-WebRequest -Uri https://trello.com/login | gm -MemberType Property
# here we get one time the html response to push a value name "challenge into the second POST"
$webResponse = Invoke-WebRequest -Uri https://alcasar.laplateforme.io/intercept.php

# find challenge id
foreach($key in $webResponse.Forms.Fields.GetEnumerator()) 
{
    if ( $key.Key -eq "challenge")
    {
       $challenge = $key.Value
    }
}
# Creation of the Login POST with the challenge value in the body 
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$session.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36"
Invoke-WebRequest -UseBasicParsing -Uri "https://alcasar.laplateforme.io/intercept.php" `
-Method "POST" `
-WebSession $session `
-Headers @{
"Accept"="text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9"
  "Accept-Encoding"="gzip, deflate, br"
  "Accept-Language"="fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7"
  "Cache-Control"="max-age=0"
  "Origin"="https://alcasar.laplateforme.io"
  "Sec-Fetch-Dest"="document"
  "Sec-Fetch-Mode"="navigate"
  "Sec-Fetch-Site"="same-origin"
  "Sec-Fetch-User"="?1"
  "Upgrade-Insecure-Requests"="1"
  "sec-ch-ua"="`"Google Chrome`";v=`"105`", `"Not)A;Brand`";v=`"8`", `"Chromium`";v=`"105`""
  "sec-ch-ua-mobile"="?0"
  "sec-ch-ua-platform"="`"Windows`""
} `
-ContentType "application/x-www-form-urlencoded" `
-Body "challenge=$challenge&userurl=http%3A%2F%2Fwww.msftconnecttest.com%2Fredirect&username=YOUR_EMAIL&password=YOURPASSAWORD&button=Authentification"
# in the BODY section you have to change your email address username=YOUR_EMAIL and also for your password=YOUR_PASSWORD