import warnings

with warnings.catch_warnings():
    warnings.filterwarnings("ignore",category=DeprecationWarning)
    from bottle import get, post, run, debug, default_app, request, template, static_file 

import mongo_task_list as task_list

show_completed = True

@get('/')
@get('/task-list')
def get_task_list():
    tasks = task_list.get_tasks()
    output = template('dashboard.tpl', tasks=tasks)
    return output


#this says its serving static files
# @get('/static/<filepath:path>')
# def server_static(filepath):
#     print(filepath)
#     return static_file(filepath, root='./static')

def setup():
    task_list.save_task({'task' : "This is a test task.", 'name' : "Govi"})
    task_list.save_task({'task' : "This is another test task.", 'name' : "Govi"})
    task_list.save_task({'task' : "This is a completed task.", 'name' : "Landon"})
    task_list.save_task({'task' : "This is an active task.", 'name' : "Jerry"})


#application = default_app()
# setup()
debug(True)
run(host='localhost', port=8088, reloader=True)

