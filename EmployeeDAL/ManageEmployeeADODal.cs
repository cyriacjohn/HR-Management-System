using System;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace EmployeeDAL
{
    public class ManageEmployeeADODal
    {
        #region Page Methods

        /// <summary>
        /// Fill in the employee details
        /// </summary>
        /// <param name="name"></param>
        /// <param name="birthDate"></param>
        /// <param name="address"></param>
        /// <param name="phoneno"></param>
        /// <param name="email"></param>
        /// <param name="gender"></param>
        /// <param name="department"></param>
        /// <param name="designation"></param>
        /// <param name="dateofJoin"></param>
        /// <param name="leaveDate"></param>
        /// <param name="isPermanent"></param>
        /// <param name="permanentDate"></param>
        /// <param name="loginname"></param>
        /// <param name="password"></param>
        /// <param name="status"></param>
        /// <param name="experience"></param>
        /// 

        public static void InsertDetails(string name, DateTime birthDate, string address, string phoneno, string email,
                                         string gender, string department, string designation, DateTime dateofJoin,
                                         DateTime? leaveDate, bool isPermanent, DateTime? permanentDate, string loginname,
                                         string password, string status, string experience)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["HRMConnection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    StringBuilder query = new StringBuilder();
                    query.Append("INSERT INTO Employees( ");
                    query.Append("Name, DateOfBirth, Address, PhoneNumber, Email, Gender , ");
                    query.Append("Department , Designation , DateOfJoin, ");
                    if (leaveDate != null && leaveDate > DateTime.MinValue)
                    {
                        query.Append("DateOfLeaving, ");
                    }
                    query.Append("IsPermanent,");
                    if (permanentDate != null && permanentDate > DateTime.MinValue)
                    {
                        query.Append("PermanentDate ,");
                    }
                    query.Append("UserName , Password , Status , YearsOfExperience )");
                    query.Append("VALUES ( ");
                    query.Append("@Name, @DateOfBirth, @Address, @PhoneNumber, @Email, @Gender, ");
                    query.Append("@Department, @Designation, @DateOfJoin, ");
                    if (leaveDate != null && leaveDate > DateTime.MinValue)
                    {
                        query.Append("@DateOfLeaving, ");
                    }
                    query.Append("@IsPermanent, ");
                    if (permanentDate != null && permanentDate > DateTime.MinValue)
                    {
                        query.Append("@PermanentDate ,");
                    }
                    query.Append("@UserName, @Password, @Status, @YearsOfExperience)");
                    string insertQuery = Convert.ToString(query);
                    using (SqlCommand cmd = new SqlCommand(insertQuery, con))
                    {
                        cmd.Parameters.AddWithValue("@Name", name);
                        cmd.Parameters.AddWithValue("@Address", address);
                        cmd.Parameters.AddWithValue("@DateOfBirth", birthDate);
                        cmd.Parameters.AddWithValue("@PhoneNumber", phoneno);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Gender", gender);
                        cmd.Parameters.AddWithValue("@Designation", designation);
                        cmd.Parameters.AddWithValue("@Department", department);
                        cmd.Parameters.AddWithValue("@DateOfJoin", dateofJoin);
                        if (leaveDate != null && leaveDate > DateTime.MinValue)
                        {
                            cmd.Parameters.AddWithValue("@DateOfLeaving", leaveDate);
                        }
                        cmd.Parameters.AddWithValue("@IsPermanent", isPermanent);
                        if (permanentDate != null && permanentDate > DateTime.MinValue)
                        {
                            cmd.Parameters.AddWithValue("@PermanentDate", permanentDate);
                        }
                        cmd.Parameters.AddWithValue("@UserName", loginname);
                        cmd.Parameters.AddWithValue("@Password", password);
                        cmd.Parameters.AddWithValue("@Status", status);
                        cmd.Parameters.AddWithValue("@YearsOfExperience", experience);
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        /// <summary>
        /// Employee Search
        /// </summary>
        /// <param name="name"></param>
        /// <param name="dateOfJoin"></param>
        /// <param name="status"></param>
        /// <returns></returns>
        public static DataTable SearchEmployee(string name, string dateOfJoin, string status)
        {
            DataTable dt = new DataTable();
            try
            {
                Database db = DatabaseFactory.CreateDatabase("HRMConnection");
                StringBuilder search = new StringBuilder(" SELECT EmployeeId, Name, Email, Department, Designation, " +
                                                         "CONVERT(VARCHAR,DateOfJoin, 106) DateOfJoin, Status, YearsOfExperience FROM Employees WHERE 1=1 ");
                if (!string.IsNullOrEmpty(name))
                {
                    search.Append(" AND Name LIKE @Name ");
                }
                if (!string.IsNullOrEmpty(dateOfJoin))
                {
                    search.Append(" AND DateOfJoin = @DateOfJoin ");
                }
                if (!string.IsNullOrEmpty(status))
                {
                    search.Append(" AND Status = @Status ");
                }
                using (DbCommand cmd = db.GetSqlStringCommand(Convert.ToString(search)))
                {
                    db.AddInParameter(cmd, "@Name" , DbType.String, "%" + name + "%");
                    db.AddInParameter(cmd, "@DateOfJoin" , DbType.String, dateOfJoin);
                    db.AddInParameter(cmd, "@Status" , DbType.String, status);
                    DataSet ds = db.ExecuteDataSet(cmd);
                    dt = ds.Tables[0];
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return dt;
        }

        /// <summary>
        /// Get Employee By Id
        /// </summary>
        /// <param name="employeeId"></param>
        /// <returns></returns>
        public static DataRow GetEmployeeById(int employeeId)
        {
            DataTable dt = new DataTable();
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["HRMConnection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    StringBuilder query = new StringBuilder();
                    query.Append("SELECT Name, DateOfBirth, Address, PhoneNumber, Email, Gender, Department , ");
                    query.Append("Designation , DateOfJoin, ");
                    query.Append(" DateOfLeaving, IsPermanent, PermanentDate, UserName, Password, Status, YearsOfExperience ");
                    query.Append(" FROM Employees WHERE EmployeeId = @EmployeeId ");
                    string selectQuery = Convert.ToString(query);
                    using (SqlCommand cmd = new SqlCommand(selectQuery, con))
                    {
                        cmd.Parameters.AddWithValue("@EmployeeId", employeeId);
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            da.Fill(dt);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return dt.Rows[0];
        }

        /// <summary>
        /// Update Employee Details
        /// </summary>
        /// <param name="employeeId"></param>
        /// <param name="name"></param>
        /// <param name="birthDate"></param>
        /// <param name="address"></param>
        /// <param name="phoneno"></param>
        /// <param name="email"></param>
        /// <param name="gender"></param>
        /// <param name="department"></param>
        /// <param name="designation"></param>
        /// <param name="dateofJoin"></param>
        /// <param name="leaveDate"></param>
        /// <param name="isPermanent"></param>
        /// <param name="permanentDate"></param>
        /// <param name="loginname"></param>
        /// <param name="password"></param>
        /// <param name="status"></param>
        /// <param name="experience"></param>
        public static void UpdateEmployeeDetails(int employeeId, string name, DateTime birthDate, string address,
                                                 string phoneno, string email, string gender, string department,
                                                 string designation, DateTime dateofJoin, DateTime? leaveDate,
                                                 bool? isPermanent, DateTime? permanentDate, string loginname,
                                                 string password, string status, string experience)
        {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("HRMConnection");
                StringBuilder query = new StringBuilder();
                query.Append("UPDATE Employees SET ");
                query.Append(" Name = @Name, DateOfBirth = @DateOfBirth, Address = @Address, PhoneNumber = @PhoneNumber, ");
                query.Append(" Email = @Email , ");
                query.Append("Gender = @Gender, Department = @Department , Designation = @Designation , " +
                             "DateOfJoin = @DateOfJoin , ");
                if (leaveDate != null)
                {
                    query.Append(" DateOfLeaving = @DateOfLeaving , ");
                }
                query.Append(" IsPermanent = @IsPermanent , ");
                if (permanentDate != null)
                {
                    query.Append(" PermanentDate = @PermanentDate , ");
                }
                query.Append(" UserName =  @UserName  ,  Password = @Password  ,  Status = @Status , ");
                query.Append(" YearsOfExperience = @YearsOfExperience ");
                query.Append(" WHERE EmployeeId = @EmployeeId");
                string updateQuery = Convert.ToString(query);
                using (DbCommand cmd = db.GetSqlStringCommand(updateQuery))
                {
                    db.AddInParameter(cmd, "@EmployeeId", DbType.Int32, employeeId);
                    db.AddInParameter(cmd, "@Name", DbType.String, name);
                    db.AddInParameter(cmd, "@DateOfBirth", DbType.DateTime, birthDate);
                    db.AddInParameter(cmd, "@Address", DbType.String, address);
                    db.AddInParameter(cmd, "@PhoneNumber", DbType.String, phoneno);
                    db.AddInParameter(cmd, "@Email", DbType.String, email);
                    db.AddInParameter(cmd, "@Gender", DbType.String, gender);
                    db.AddInParameter(cmd, "@Department", DbType.String, department);
                    db.AddInParameter(cmd, "@Designation", DbType.String, designation);
                    db.AddInParameter(cmd, "@DateOfJoin", DbType.DateTime, dateofJoin);
                    if (leaveDate != null)
                    {
                        db.AddInParameter(cmd, "@DateOfLeaving", DbType.DateTime, leaveDate);
                    }
                    db.AddInParameter(cmd, "@IsPermanent", DbType.Boolean, isPermanent);
                    if (permanentDate != null)
                    {
                        db.AddInParameter(cmd, "@PermanentDate", DbType.DateTime, permanentDate);
                    }
                    db.AddInParameter(cmd, "@UserName", DbType.String, loginname);
                    db.AddInParameter(cmd, "@Password", DbType.String, password);
                    db.AddInParameter(cmd, "@Status", DbType.String, status);
                    db.AddInParameter(cmd, "@YearsOfExperience", DbType.String, experience);
                    db.ExecuteNonQuery(cmd);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        /// <summary>
        /// Delete Employee
        /// </summary>
        /// <param name="employeeId"></param>
        public static void DeleteEmployee(int employeeId)
        {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("HRMConnection");
                string deleteQuery = "DELETE FROM Employees WHERE EmployeeId = @EmployeeId";
                using (DbCommand dbCommand = db.GetSqlStringCommand(Convert.ToString(deleteQuery)))
                {
                    db.AddInParameter(dbCommand, "@EmployeeId", DbType.Int32, employeeId);
                    db.ExecuteNonQuery(dbCommand);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        /// <summary>
        /// Get Employee Details
        /// </summary>
        /// <returns></returns>
        public static DataTable GetEmployeeDetails()
        {
            DataTable dt = new DataTable();
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["HRMConnection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    string selectQuery = "SELECT EmployeeId, Name, Email, Department, Designation, " +
                                         "CONVERT(VARCHAR,DateOfJoin, 106) DateOfJoin, Status,  " +
                                         "YearsOfExperience FROM Employees";
                    using (SqlCommand cmd = new SqlCommand(selectQuery, con))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            da.Fill(dt);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return dt;
        }

        /// <summary>
        /// Unique Login name
        /// </summary>
        /// <param name="loginName"></param>
        /// <returns></returns>
        public static bool IsLoginNameUnique(string loginName)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["HRMConnection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    StringBuilder query = new StringBuilder();
                    query.Append("SELECT COUNT(EmployeeId) FROM Employees ");
                    query.Append("WHERE UserName = @UserName");
                    string uniqueIdQuery = Convert.ToString(query);
                    using (SqlCommand cmd = new SqlCommand(uniqueIdQuery, con))
                    {
                        cmd.Parameters.AddWithValue("@UserName", loginName);
                        con.Open();
                        int count = Convert.ToInt32(cmd.ExecuteScalar());
                        return count == 0;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        }
        #endregion
    }
}


