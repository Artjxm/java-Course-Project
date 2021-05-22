<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <div class="m-3">Страница авторизации</div>
<@l.login "/login" false/>
</@c.page>