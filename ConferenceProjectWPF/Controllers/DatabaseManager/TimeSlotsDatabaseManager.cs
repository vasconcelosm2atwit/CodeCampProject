using ConferenceProjectWPF;
using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Data;


namespace ConferenceProjectWPF
{
    class TimeSlotsDatabaseManager
    {
        string connectionString = @"Server=mydb.c6botwup9amq.us-east-2.rds.amazonaws.com;Database=projectconference;Uid=root;Pwd=password123;convert zero datetime=True";

        //############################################### ADD ###############################################
        public void addTimeSlot(TimeSlot new_timeSlot)
        {
            using (MySqlConnection mysqlCon = new MySqlConnection(connectionString))
            {
                mysqlCon.Open();

                MySqlCommand mySqlCmdNewRooom = new MySqlCommand("add_timeSlots", mysqlCon);
                mySqlCmdNewRooom.CommandType = CommandType.StoredProcedure;
                mySqlCmdNewRooom.Parameters.AddWithValue("_start_time", new_timeSlot.Start_time);
                mySqlCmdNewRooom.Parameters.AddWithValue("_end_time", new_timeSlot.End_time);

                mySqlCmdNewRooom.ExecuteNonQuery();
                mysqlCon.Close();

            }
        }

        //############################################### RETRIEVE ###############################################
        public List<TimeSlot> retrieveTimeSlots()
        {
            List<TimeSlot> timeSlotsList = new List<TimeSlot>();
            using (MySqlConnection mysqlCon = new MySqlConnection(connectionString))
            {
                DataTable dt = new DataTable();
                mysqlCon.Open();
                MySqlCommand mySqlCmdNewRooom = new MySqlCommand("retrieve_timeSlots", mysqlCon);
                mySqlCmdNewRooom.CommandType = CommandType.StoredProcedure;
                MySqlDataAdapter da = new MySqlDataAdapter(mySqlCmdNewRooom);

                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        TimeSlot allSpeakers = new TimeSlot();
                        allSpeakers.Id = Int16.Parse(dt.Rows[i]["time_slots_id"].ToString());
                        allSpeakers.Start_time = dt.Rows[i]["start_time"].ToString();
                        allSpeakers.End_time = dt.Rows[i]["end_time"].ToString();
                        timeSlotsList.Add(allSpeakers);
                    }
                }
                mySqlCmdNewRooom.ExecuteNonQuery();
                mysqlCon.Close();
            }
            return timeSlotsList;
        }

        //############################################### UPDATE ###############################################
        public void updateTimeSlot(TimeSlot timeSlotsToUpdate)
        {
            using (MySqlConnection mysqlCon = new MySqlConnection(connectionString))
            {
                mysqlCon.Open();
                //IF NOT THEN USE
                /* MySqlCommand mySqlCmdNewRooom = new MySqlCommand("update_roomTEST", mysqlCon);
                */

                MySqlCommand mySqlCmdNewRooom = new MySqlCommand("update_room", mysqlCon);
                mySqlCmdNewRooom.CommandType = CommandType.StoredProcedure;
                mySqlCmdNewRooom.Parameters.AddWithValue("_start_time", timeSlotsToUpdate.Start_time);
                mySqlCmdNewRooom.Parameters.AddWithValue("_end_time", timeSlotsToUpdate.End_time);

                mySqlCmdNewRooom.ExecuteNonQuery();
                mysqlCon.Close();

            }
        }

        //############################################### DELETE ###############################################
        public void deleteTimeSlot(TimeSlot timeSlotToDelete)
        {

            if (timeSlotToDelete == null) return;
            using (MySqlConnection mysqlCon = new MySqlConnection(connectionString))
            {
                mysqlCon.Open();
                //IF NOT THEN USE
                MySqlCommand mySqlCmdNewRooom = new MySqlCommand("delete_timeSlot", mysqlCon);
                 mySqlCmdNewRooom.CommandType = CommandType.StoredProcedure;
                 mySqlCmdNewRooom.Parameters.AddWithValue("_start_time", timeSlotToDelete.Start_time);
                mySqlCmdNewRooom.Parameters.AddWithValue("_end_time", timeSlotToDelete.End_time);
                
                /*
                MySqlCommand mySqlCmdNewRooom = new MySqlCommand("delete_timeSlot", mysqlCon);
                mySqlCmdNewRooom.CommandType = CommandType.StoredProcedure;
                mySqlCmdNewRooom.Parameters.AddWithValue("_start_time", timeSlotToDelete.Start_time); */

                mySqlCmdNewRooom.ExecuteNonQuery();
                mysqlCon.Close();

            }
        }
    }
}
