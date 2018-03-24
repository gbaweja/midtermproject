<head><title>Personal Social Media</title></head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<form action="/new-task" method="post">
    
<div class="w3-container w3-center w3-animate-bottom w3-yellow w3-hover-red">
  <table>
    <tr>
      <th>
        <div width=400 class="w3-padding">My Personal Social Media</div>
      </th>
    </tr>
    <tr>
      <td>
        <div class="w3-card-4 w3-padding">
          <input autofocus type="text" name="task" placeholder="New Task..." style="min-width: 400px">
        </div>
      </td>
      <td>
        <div class="w3-card-4 w3-padding">
          <input autofocus type="text" name="name" placeholder="who should do it..." style="min-width: 400px">
        </div>
      </td>
      <td>
        <div class="w3-padding w3-center">
          <input type="image" src="/static/save-task.png"/>
        </div>
      </td>
      <td>
        <div class="w3-padding w3-center">
          <a href="/">
            <img src="/static/discard-task.png">
          </a>
        </div>
      </td>
  </table>
</div>
</form>
<table>
    %for task in tasks:
      <tr>
        <td>
          <div class="w3-card-4 w3-padding">{{task['task']}}</div>
        </td>
        <td>
          <div class="w3-card-4 w3-padding">{{task['name']}}</div>
        </td>
         <td>
        <div class="w3-padding w3-center">
          <a href="/update-task/{{task['_id']}}">
          <input type="image" src="/static/save-task.png"/>
        </div>
      </td>
      <td>
        <div class="w3-padding w3-center">
            <a href="/discard-task/{{task['_id']}}">
            <img src="/static/discard-task.png">
          </a>
        </div>
      </td>
      </tr>
    %end

</table>
</body>