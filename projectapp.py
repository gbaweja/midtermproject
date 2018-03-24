import warnings

with warnings.catch_warnings():
    warnings.filterwarnings("ignore",category=DeprecationWarning)
    from bottle import get, post, run, debug, default_app, request, template, static_file, redirect

import mongo_task_list as task_list

show_completed = True

@get('/')
def get_tasks():
    tasks = task_list.get_tasks()
    output = template('midtermapp.tpl', tasks=tasks)
    return output


@get('/new-task')
def get_task_list():
    tasks = task_list.get_tasks()
    output = template('midtermapp.tpl', tasks=tasks)
    return output

@post('/new-task')
def post_new_task():
    task = request.forms.get('task')
    name = request.forms.get('name')
    task={
        'task':task,
        'name': name
    }
    task_list.save_task(task)
    return get_task_list()

@get('/discard-task/<id>')
def get_discard_task(id):
    task_list.delete_task(id)
    return get_task_list()

@get('/update-task/<id>')
def get_task_to_be_updated(id):
    task = task_list.get_task(id)
    output = template('edit.tpl', task=task)
    return output

@post('/update-task/<id>')
def update_task(id):
    task = request.forms.get('task')
    name = request.forms.get('name')
    task_list.update_task(id, task, name)
    redirect('/')


#this says its serving static files
@get('/static/<filepath:path>')
def server_static(filepath):
    print(filepath)
    return static_file(filepath, root='./static')


#setup()
#application = default_app()
debug(True)
run(host='localhost', port=8080, reloader=True)

