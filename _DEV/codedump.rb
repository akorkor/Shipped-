<td id="jobs"><%= link_to "jobs", job_path(@jobs) %></td>
<td><%= link_to 'Edit', edit_job_path(user) %></td>
<td><%= link_to 'Delete', user, method: :delete, data: { confirm: 'Are you sure?' } %></td>


User.delete_all
User.create([
    { user_id:1, fname:"Cody", lname:"A", email:"ca@gmail.com", username:"acody", password:"123" },
    { user_id:2, fname:"Matt", lname:"B", email:"mb@gmail.com", username:"bmatt", password:"456" },
    { user_id:3, fname:"Des", lname:"C", email:"dc@gmail.com", username:"cdes", password:"789" },
    { user_id:4, fname:"Brady", lname:"D", email:"bd@gmail.com", username:"dbrady", password:"012" }
])

<% if user[:id] == current_user[:id] || current_user[:id] == 8 %>


  <%= link_to 'Back', jobs_path %>


  <li><%= link_to 'Edit', edit_job_path(@job) %></li>



  <table id="user-table">
    <thead>
    <th id="jobHead">Jobs</th>
    <th id="description">Description</th>
    <th id="edit">edit</th>
    <th id="delete">delete</th>

      <tr>
      </tr>
    </thead>
    <tbody>
    </tbody>
  </table>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
</tr>

#user-table, th, td {
  text-align: left;
  border: 1px solid darkorange;
  border-collapse: collapse;
}
#user-table th, #user-table td {
  padding: 10px;
}
#user-table {
  background-color: seashell;
  width: 100%;
}
#user-table > tr > #jobHead {
  width: 70%;
}
#user-table > tr > #description {
  width: 10%;
}
#user-table > tr > #edit {
  width: 10%;
}
#user-table > tr > #delete {
  width: 10%;
}
