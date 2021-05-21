<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ваш логин: </label>
            <div class="col-sm-4"><input type="text"
                                         name="username"
                                         class="form-control"
                                         placeholder="Ваш логин"/></div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ваш пароль: </label>
            <div class="col-sm-4"><input type="password"
                                         name="password"
                                         class="form-control"
                                         placeholder="Супер секретный пароль"/></div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <#if !isRegisterForm><a href="/registration">Зарегистрироваться</a></#if>
        <button class="btn btn-primary" type="submit"><#if isRegisterForm>Зарегистрироваться<#else>Войти</#if></button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-primary" type="submit">Выйти</button>
    </form>
</#macro>