<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ваш логин: </label>
            <div class="col-sm-3"><input type="text"
                                         name="username"
                                         class="form-control"
                                         placeholder="Ваш логин"/></div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ваш пароль: </label>
            <div class="col-sm-3"><input type="password"
                                         name="password"
                                         class="form-control"
                                         placeholder="Ваш супер секретный пароль"/></div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-primary mt-2" type="submit"><#if isRegisterForm>Зарегистрироваться<#else>Войти</#if></button>
        <div class="mt-2"><#if !isRegisterForm><a href="/registration">Зарегистрироваться</a></#if></div>
    </form>
</#macro>

<#macro logout>
    <div class="mx-2">
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button class="btn btn-primary" type="submit">Выйти</button>
        </form>
    </div>
</#macro>