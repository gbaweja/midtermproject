<body>
<table>
<tbody>
    <tr>
      <form action="/update-task/{{task['_id']}}" method="post">
      <td>
        <div class="w3-card-4 w3-padding">
           <input type="text" name="task" placeholder="{{task['task']}}" style="min-width: 400px">
        </div>
      </td>
      <td>
      <div class="w3-card-4 w3-padding"> <input type="text" name="name" placeholder={{task['name']}}></div>
      </td>
      <td>
        <div class="w3-padding w3-center">
          <input type="image" src="/static/save-task.png"/>
        </div>
      </td>
      </form>
    </tr>
  </tbody>
  </table>
</body>