(function(){
	const listSector = document.getElementById("sector");
	listSector.addEventListener("change", (event) => requestZonas());
	document.getElementById("grabar").addEventListener("click", (event) => 
	{
		const body = `crud=0&id=${document.getElementById("id").value}&nom=${document.getElementById("nom").value}&fech=${document.getElementById("fech").value}&idsector=${document.getElementById("sector").selectedIndex}&idzona=${document.getElementById("zona").value}&sueldo=${document.getElementById("sueldo").value}`;
		ajax.sendRequest(
			function(responseText)
			{ 
				if(responseText === "1")
					alert("Datos guardados :)");
			}, "controllers/persona.php", body);
	});
	
	document.getElementById("reset").addEventListener("click", (event) => 
	{
		const div = document.getElementById("entry");
		const inputs = div.getElementsByTagName("input");
		for(const input of inputs)
			input.value="";
	});
	
	document.getElementById("eliminar").addEventListener("click", (event) => 
	{
		const cod_persona = prompt("Ingrese el codigo de la persona:");
		const body = `crud=3&id=${cod_persona}`;
		ajax.sendRequest(
			function(responseText)
			{ 
				if(responseText === "1")
					alert("Persona eliminada :)");
			}, "controllers/persona.php", body);
	});

	document.getElementById("consultar_sueldo").addEventListener("click", (event) => 
	{
		ajax.sendRequest(function (responseText)
		{
			document.getElementById("body_sueldo").innerHTML = responseText;
			const tbody = document.getElementById("body_sueldo");
			const rows = tbody.getElementsByTagName("tr");
			for(const row of rows)
			{
				row.onclick = function() 
				{
					ajax.sendRequest(function (responseText)
					{
						alert(responseText);
					}, "controllers/sueldo_persona.php", `cod_zona=${this.className}`);
				};
			}
		}, "controllers/sueldos_sector.php", null);
	});
	
	(function requestSectors()
	{
		ajax.sendRequest(showSectors, "../controllers/sector.php", null);
	}());
	
	function requestZonas()
	{
		ajax.sendRequest(showZonas, "controllers/zona.php", `idsector=${listSector.selectedIndex}`);
	}
	
	function showSectors(responseText)
	{
		listSector.innerHTML = responseText;
		requestZonas();
	}
	
	function showZonas(responseText)
	{
		document.getElementById("zona").innerHTML = responseText;
	}
})();