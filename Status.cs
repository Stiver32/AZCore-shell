
using System.Net.Sockets;
using MySqlConnector;


var builder = WebApplication.CreateBuilder(args);
var azHost = Environment.GetEnvironmentVariable("AZ_HOST");
var connString = $"Server={azHost};User ID=monitor;Password={Environment.GetEnvironmentVariable("AZ_PASSWORD")};Database=acore_characters";


// Add services to the container.
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

async Task<string> CheckServers(String serverType, int portNum)
{
	String status;
	try
	{
		using var client = new TcpClient();
		await client.ConnectAsync(azHost, portNum);
		status = $"{serverType}_online 1\n";
	}
	catch(ArgumentNullException e)
	{
		status = $"{serverType}_online 0\n";
	}
  catch (SocketException e)
  {
     status = $"{serverType}_online 0\n";
  }
	return status;
}

app.MapGet("/azerothcorestatus", async () =>
{
	 String sqlConnection;
	 String userCount;
	 
	 String authStatus = await CheckServers("auth", 3724);
	 String worldStatus = await CheckServers("world", 8085);
    
    try
    {
	    await using var dbConnection = new MySqlConnection(connString);
	    await dbConnection.OpenAsync();
	    await using var dbQuery = new MySqlCommand("SELECT COUNT(*) FROM acore_characters.characters WHERE online = 1", dbConnection);
		  sqlConnection = "sql_database 1\n";
		  userCount = $"players_online {Convert.ToInt32(await dbQuery.ExecuteScalarAsync())}\n";
		  
    }
    catch (MySqlException e)
    {
	    userCount = "";
	    sqlConnection = "sql_database 0\n";
	    Console.WriteLine(e.Message);
    }
    String result = $"{authStatus}{worldStatus}{sqlConnection}{userCount}"; 
    return result;
    
    
})
.WithName("azerothcorestatus")
.WithOpenApi();

app.Run();
