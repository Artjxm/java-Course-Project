<#import "parts/common.ftlh" as c>
<#import "parts/security.ftlh" as s>

<@c.page>
    <div class="row justify-content-center">
        <div class="form mb-2 col-sm-6">
            <div class="form-group col-md-5">
                <form method="get" action="/main" class="">
                    <input type="text"
                           name="filter"
                           value="${filter?ifExists}"
                           placeholder="Введите тег для поиска уроков"
                           class="form-control col-md-3">
                    <button type="submit" class="btn btn-primary">Найти урок</button>
                </form>
            </div>
        </div>
    </div>

    <div class="row justify-content-center mb-3">
        <div class="collapse col-sm-6" id="collapseExample">
            <div class="form-group">
                <form method="post" enctype="multipart/form-data">
                <textarea class="form-control"
                          placeholder="Введите сообщение"
                          style="height: 130px; width: 500px"
                          name="text"></textarea>
                    <input type="text"
                           class="form-control col-md-3"
                           style="width: 500px"
                           name="tag" placeholder="Тэг">
                    <div class="custom-file" style="width: 500px">
                        <input type="file" class="form-control" name="file" id="inputGroupFile04"
                               aria-describedby="inputGroupFileAddon04" aria-label="Upload">
                    </div>
                    <input type="hidden" name="_csrf" value="${_csrf.token}" />
                    <button type="submit" class="btn btn-primary">Добавить</button>
                </form>
            </div>
        </div>
    </div>

    <div class="row justify-content-center d-flex ">

        <div class="col-sm-6">
            <#list messages?reverse as message>
                <div class="card m-1 p-4">
                    <div class="main-img-block container-fluid">
                        <#if message.filename??>
                            <img src="/img/${message.filename}" class="card-img-top rounded">
                        </#if>
                    </div>
                    <span>${message.text}</span>
                    <p class="card-text">
                        <small class="text-muted">
                            <i>Тег: ${message.tag}</i>
                            <br>
                            <strong>Автор урока: ${message.authorName}</strong>
                        </small>
                    </p>
                </div>
            <#else>
                Нет публикаций по данному тегу
            </#list>
        </div>
    </div>
</@c.page>