var geocoder = new kakao.maps.services.Geocoder();

if (navigator.geolocation) 
{
	navigator.geolocation.getCurrentPosition(callback)
} 
else 
{ 
	x.innerHTML = "Geolocation is not supported by this browser.";
}

function callback(position)
{
	/*document.getElementById("demo2").innerHTML = position.coords.longitude + "<br>" + position.coords.latitude;*/
	
	geocoder.coord2Address(position.coords.longitude, position.coords.latitude, result);
};

function result(info)
{	
	for(var i = 0; i < info.length; i++) 
	{
		document.getElementById('loc').innerHTML= info[0].address.address_name;
		break;
	}
};