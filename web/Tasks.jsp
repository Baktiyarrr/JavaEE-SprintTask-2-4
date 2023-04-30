<%@ page import="techorda.db.Task" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
    <script type="text/javascript" src="/js/bootstrap.bundle.js"></script>
    <meta charset="UTF-8" />
</head>
<body>
<div class = "container">
    <%@include file="navbar.jsp"%>
<div class="row mt-3">
    <div class="col-12">
        <button type="button" class="btn btn-dark btn-sm" style="background-color: #052c65"data-bs-toggle="modal" data-bs-target="#addTask">
            + Добавить задание
        </button>

        <div class="modal fade modal-lg" id="addTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="/add-task" method="post">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Новое задание</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="row mt-3">
                            <div class="col-12">
                                <label> Наименование:</label>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-12">
                                <input type="text" class="form-control" placeholder="Наименование..."
                                       name="task_name"
                                >
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-12">
                                <label>Описание:</label>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-12">
                                <input type="text" class="form-control" style="height: 200%;" placeholder="Описание..." name="task_description">
                            </div>
                        </div>
                        <div class="row mt-5">
                            <div class="col-12">
                                <label>Крайний срок:</label>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-12">
                                <input type="text"  name="deadline_date" placeholder="dd/mm/yyyy" min="2019-01-01" max="2024-12-12" style="width: 100%">
                            </div>
                        </div>
                        <input type="hidden" name="option" value="Нет">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                        <button class="btn btn-primary">Добавить</button>
                    </div>
                    </form>
              </div>
            </div>
        </div>
    </div>
</div>


    <div class = "row mt-3">
        <div class = "col-12">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Наименование</th>
                    <th>Крайний срок</th>
                    <th>Выполнено</th>
                    <th>Детали</th>
                </tr>
                </thead>
                <tbody>
                <%
                    ArrayList<Task> tapsyrmalar = (ArrayList<Task>) request.getAttribute("zadaniya");
                    if(tapsyrmalar!=null){
                        for(Task t : tapsyrmalar){
                %>
                <tr>
                    <td><%=t.getId()%></td>
                    <td><%=t.getName()%></td>
                    <td><%=t.getDeadlineDate()%></td>
                    <td><%=t.getOption()%></td>
                    <td><a class="btn btn-dark"
                           style="background-color: #052c65"
                           href="/details?task_id=<%=t.getId()%>"
                        >
                        Детали
                        </a>
                    </td>
                </tr>
                <%
                        }
                    }
                %>
                </tbody>
            </table>
        </div>

    </div>
</div>


</body>
</html>
