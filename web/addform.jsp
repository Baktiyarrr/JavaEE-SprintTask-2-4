        <form action="/add-task" method="post">
          <div class="row mt-3">
            <div class="col-12">
              <label>Name:</label>
            </div>
          </div>
          <div class="row mt-2">
            <div class="col-12">
              <input type="text" class="form-control" placeholder="Наименование..." name="task_name">
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
              <input type="text"
                     name="deadline_date"
                     placeholder="dd/mm/yyyy"
                     min="2019-01-01"
                     max="2024-12-12"
                     style="width: 100%"
              >
            </div>
          </div>
        </form>



