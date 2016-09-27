<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
 body{
 background-image:url('http://www.pageresource.com/wallpapers/wallpaper/black-harley-davidson.jpg');
 background-size:cover;
 background-font:white;
 }
 </style>

</head>


<body>
<font color="white">
	<h1>LOGIN</h1>
	<form method="post" action="perform_login">
		<table>
			<tr>
				<td>User Name</td>
				<td><input type="text" id="name" name="username" required></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" id="password" name="password"></td>
			</tr>
			<tr>
				<td><input type="submit" value="submit"> <input
					type="submit" value="Reset"></td>
			</tr>

</form>
		</table>
	</form>
</body>
</html>


