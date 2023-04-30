<%@ page import="techorda.db.Task" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
    <script type="text/javascript" src="/js/bootstrap.bundle.js"></script>
</head>
<body>
    <div class="container">
        <%@include file="navbar.jsp"%>
        <% Task task = (Task)request.getAttribute("zadanie");
           if(task != null){
        %>

        <div class="row mt-3">
            <div class="col-6 mx-auto">
                <form action="/save-task" method="post">
                    <input type="hidden" name="task_id" value="<%=task.getId()%>">
                    <div class="row mt-3">
                        <div class="col-12">
                            <label>Наименование:</label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="text" class="form-control" name="task_name"  value="<%=task.getName()%>">
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <label>Описание:</label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <textarea class="form-control" name="task_description"  rows="3">
                                <%=task.getDescription()%>
                            </textarea>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <label>Крайний срок:</label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="text"
                                   class="form-control"
                                   min="2019-01-01"
                                   max="2024-12-12"
                                   style="width: 100%"
                                   value="<%=task.getDeadlineDate()%>"
                                   name="deadline_date"
                            >
                        </div>
                    </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <label>Выполнено:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <select style="width:100%" name="task_option">
                            <option <%=(task.getOption().equals("Нет")?"selected":"")%> >Нет</option>
                            <option <%=(task.getOption().equals("Да")?"selected":"")%> >Да</option>
                        </select>
                    </div>
                </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <button class="btn btn-success btn-sm">Сохранить</button>
                            <button type="button"
                                    class="btn btn-danger btn-sm"
                                    data-bs-toggle="modal"
                                    data-bs-target="#deleteTask"
                            >
                                Удалить
                            </button>
                        </div>
                    </div>
                </form>

                            <div class="modal fade modal-lg"
                                 id="deleteTask"
                                 data-bs-backdrop="static"
                                 data-bs-keyboard="false"
                                 tabindex="-1"
                                 aria-labelledby="staticBackdropLabel"
                                 aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form action="/delete-task" method="post">
                                            <input type="hidden" name="id" value="<%=task.getId()%>">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-5" id="staticBackdropLabel">
                                                    Подтверждение удаления
                                                </h1>
                                                <button type="button"
                                                        class="btn-close"
                                                        data-bs-dismiss="modal"
                                                        aria-label="Close">
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                Вы действительно хотите удалить?
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button"
                                                        class="btn btn-secondary"
                                                        data-bs-dismiss="modal"
                                                >
                                                    Нет
                                                </button>

                                                <button class="btn btn-secondary"> Да </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

            </div>
        </div>
        <%
           }else{
        %>
        <h3 class="text-center">
            Задание не найдено
        </h3>
        <%
            }
        %>
    </div>

</body>
</html>