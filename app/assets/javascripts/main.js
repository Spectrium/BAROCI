
	var launch = new Date(2019,11,30,14,00,00)
	function setDate(){
		var now = new Date();
		var s = (launch.getTime() - now.getTime())/1000;
		var d = s/86400;
		a = document.GetElementById("days").innerHtml('<p>'+d+'</p>');
		console.log(a)
	};
setDate()