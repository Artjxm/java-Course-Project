<#include "security.ftlh">
<#import "login.ftlh" as l>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">Lesgo Language</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/">Домашняя страница</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/main"><#if name = "unknown">Войти<#else>Уроки</#if></a>
                </li>
                <#if isAdmin>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/user">Список пользователей</a>
                    </li>
                    <li>
                        <a class="nav-link active" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                            Новый урок
                        </a>
                    </li>
                </#if>
            </ul>
        </div>

        <#if name !="unknown"><div class="navbar-text">${name}</div></#if>
        <#if name !="unknown"><@l.logout/></#if>
    </div>
</nav>