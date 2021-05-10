<!doctype html>
<html lang="es">
<head>
<script src="js/ajax.js"></script>
<link rel="stylesheet" href="css/styles_table.css">
</head>

<body>
	<h2>Ingreso de Personas:</h2>
	<label>Cod Persona:</label>
	<div id="entry">
		<input type="number" id="id" />
		<br><br>
		<label>Nombre: </label>
		<input type="text" id="nom" />
		<br><br>
		<label>Fecha de Nacimiento: </label>
		<input type="date" id="fech" />
		<br><br>
		<label>Sueldo: </label>
		<input type="text" id="sueldo" />
	</div>
	<br>
	<label>Sector: </label>
	<select id="sector"></select>
	<br><br>
	<label>Zona: </label>
	<select id="zona"></select>
	<br><br>
	<button id="grabar">Grabar</button>
	<button id="eliminar">Eliminar</button>
	<button id="reset">Reset</button>
	<br><br>
	<h2>Consultar sueldos por sector y zona:</h2>
	<button id="consultar_sueldo">Consultar</button>
	<br><br>
	<p>Puedes darle clic a cualquier fila para poder ver los sueldos de cada persona por sector y zona.</p>
	<table id="sueldo_sector">
		<thead id="head_sueldo">
			<tr>
				<th>Sector</th>
				<th>Zona</th>
				<th>Sueldo</th>
			</tr>
		</thead>
		<tbody id="body_sueldo"></tbody>
	</table>
	<script src="js/events.js"></script>
</body>

</html>