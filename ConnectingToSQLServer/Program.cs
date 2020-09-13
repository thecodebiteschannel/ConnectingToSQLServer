using System;
// Import namespace to use the SqlConnection, SqlCommand, SqlDataReader
using System.Data.SqlClient;

namespace ConnectingToSQLServer
{
    class Program
    {
        static void Main(string[] args)
        {
            // Get a connection string and store it in a variable
            string connectionString = "Server=LAPTOP-C3E3H3E3\\SQLEXPRESS;Database=ContactsManager;User Id=dbuser;Password=password123;";

            // Create an instance of the SqlConnection class, and pass the connection string as a parameter
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                // Open the connection
                conn.Open();
                // Create an instance of the SqlCommand class
                using (SqlCommand cmd = new SqlCommand())
                {
                    // Associate the command object with the connection object created previously
                    cmd.Connection = conn;
                    // Associate the command object with a SQL Command
                    cmd.CommandText = "SELECT * FROM Contacts";

                    // Call the ExecuteReader method of the command object, and store its results in a SqlDataReader object
                    SqlDataReader dr = cmd.ExecuteReader();

                    // Iterate through the data reader object by calling its Read method
                    // Read will return true if there's a record to read
                    // Read will return false if there are no more records to read
                    while (dr.Read())
                    {
                        // Access each value by column name, and call the ToString() method to convert the value to a string
                        string firstName = dr["FirstName"].ToString();
                        string lastName = dr["LastName"].ToString();

                        // Output the values obtained from the database
                        Console.WriteLine(firstName + " " + lastName);
                    }
                    // Always open your data reader object after you are done with it
                    dr.Close();
                }
            }
            // Use ReadKey to keep console windows open
            Console.ReadKey();
        }
    }
}
