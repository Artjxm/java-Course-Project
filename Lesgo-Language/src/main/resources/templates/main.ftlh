<#import "parts/common.ftlh" as c>

<@c.page>
    <div class="form-row mb-10">
        <div class="form-group col-md-6">
            <form method="get" action="/main" class="form-inline">
                <input type="text"
                       name="filter"
                       value="${filter?ifExists}"
                       placeholder="Английский"
                       class="form-control">
                <button type="submit" class="btn btn-primary ml-2">Найти урок</button>
            </form>
        </div>
    </div>

    <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        Новый урок
    </a>
    <div class="collapse" id="collapseExample">
        <div class="form-group">
            <form method="post" enctype="multipart/form-data">
                <input type="text" class="form-control" name="text" placeholder="Введите сообщение" />
                <input type="text" class="form-control" name="tag" placeholder="Тэг">
                <div class="custom-file">
                    <input type="file" id="customFile" name="file">
                    <label class="custom-file-label" for="customFile">Выберите файл</label>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <button type="submit" class="btn btn-primary">Добавить</button>
            </form></div>

    </div>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
            <div>
                <#if message.filename??>
                    <img src="/img/${message.filename}" width="300px">
                </#if>
            </div>
        </div>
    <#else>
        Нет публикаций по данному тегу
    </#list>
</@c.page>