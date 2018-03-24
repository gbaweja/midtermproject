<head><title>Personal Social Media</title></head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<table>
    %for task in tasks:
      <tr>
        <td>
          <div class="w3-card-4 w3-padding w3-red">{{task['task']}}</div>
        </td>
        <td>
          <div class="w3-card-4 w3-padding">{{task['name']}}</div>
        </td>
      </tr>
    %end

</table>


</body>