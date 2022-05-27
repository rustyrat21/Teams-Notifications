$body = '{
    "@type": "MessageCard",
    "@context": "http://schema.org/extensions",
    "themeColor": "0076D7",
    "summary": "SVR-LaserPro2 Services Check after reboot",
    "sections": [{
        "activityTitle": "SVR-LaserPro2",
        "activitySubtitle": "Services RollCall",
        "activityImage": "https://teamsnodesample.azurewebsites.net/static/img/image5.png",
        "facts": [{
            "name": "Assigned to",
            "value": "IT Team"
        }
        , {
            "name": "All Services Status",
            "value": "Started"
        }],
        "markdown": true
    }]
}'
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls -bor [Net.SecurityProtocolType]::Tls11 -bor [Net.SecurityProtocolType]::Tls12
Invoke-RestMethod -Method post -ContentType 'Application/Json' -Body $body -Uri "Place Site URI Here"