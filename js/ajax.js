const ajax = 
{
	sendRequest: function(responseFunction, url, body, method = "POST")
	{
		const httpRequest = new XMLHttpRequest();
		httpRequest.onreadystatechange = function()
		{
			if(httpRequest.readyState === XMLHttpRequest.DONE && httpRequest.status === 200)
				responseFunction(httpRequest.responseText);
		};
		httpRequest.open(method, url, true);
		httpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		httpRequest.send(body);
	}
}