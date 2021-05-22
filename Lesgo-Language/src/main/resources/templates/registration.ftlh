<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <div class="m-3">Страница регистрации</div>
${message?ifExists}
<@l.login "/registration" true/>
</@c.page>