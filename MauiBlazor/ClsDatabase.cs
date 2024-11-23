using System;
using System.Data;
using Microsoft.Data.SqlClient;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;  // Correct namespace

namespace MauiBlazor
{
    public class ClsDatabase
    {
        private SqlConnection _connection;

        public ClsDatabase()
        {
            _connection = new SqlConnection();
        }

        public bool OpenConnection()
        {
            CloseConnection();
            if (_connection.State == ConnectionState.Closed)
            {
                string serverName = ClsGlobalVariables.ServerName;
                string companyName = ClsGlobalVariables.CompanyName + ClsGlobalVariables.DatabaseYear;
                string password = ClsGlobalVariables.Password;
                string connectionString = $"Data Source={serverName};Initial Catalog={companyName};Encrypt=false;User ID=Sa;Password={password}";

                try
                {
                    _connection.ConnectionString = connectionString;
                    _connection.Open();
                    return true;
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Exception while opening connection: {ex.Message}");
                    return false;
                }
            }
            return true;
        }

        public void CloseConnection()
        {
            if (_connection.State == ConnectionState.Open)
            {
                try
                {
                    _connection.Close();
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Exception while closing connection: {ex.Message}");
                }
            }
        }

        public async Task<bool> UpdateOrInsertDataAsync(string queryString, params SqlParameter[] parameters)
        {
            if (!OpenConnection())
            {
                Console.WriteLine("Failed to open the connection.");
                return false;
            }

            try
            {
                using (SqlCommand cmd = new SqlCommand(queryString, _connection))
                {
                    cmd.CommandTimeout = 100000; // Set the command timeout
                    cmd.Parameters.AddRange(parameters);

                    await cmd.ExecuteNonQueryAsync();
                    return true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Exception: {ex.Message}");
                return false;
            }
            finally
            {
                CloseConnection();
            }
        }

        public void Dispose()
        {
            CloseConnection();
            _connection?.Dispose();
        }
    }
}
