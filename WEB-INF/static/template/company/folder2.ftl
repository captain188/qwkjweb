<#include "header.ftl">
<div class="tem_banner">
    <div style="background: url(${TEMPLATE_BASE_PATH}/images/1451035707.jpg) center center no-repeat; height:
            195px; width:100%;"></div>
</div>
<section class="met_section">
    section class="met_section_head">
        <div class="left ny_loc font_14">当前位置：<a>首页</a> &gt; <a
                href="<@shishuo_folder_url_tag folderId=folder_father.folderId/>">${folder_father.name}</a></div>
    </section>
    <aside>
        <div class="left ny_t">${folder_father.name}</div>
        <div class="left ny_con">
            <ul>
            <@shishuo_folder_list_tag folderId=folder_father.folderId>
                <#list tag_folder_list as tag_folder>
                    <li><a href="<@shishuo_folder_url_tag folderId=tag_folder.folderId/>" title="${tag_folder.name}"
                           class="nymenu">${tag_folder.name}</a></li>
                </#list>
            </@shishuo_folder_list_tag>
            </ul>
        </div>
        <div class="met_clear"></div>
        <div class="left ny_t m_t06">联系我们</div>
        <div class="left ny_con01 lxwm">
        <#include "contact.ftl"/>
        </div>
        <div class="met_clear"></div>
    </aside>
    <div class="right ny_r">
        <div class="left ny_t01">${folder.name}</div>
        <div class="met_clear"></div>
    <#if folder_father.ename=="news" >
        <div class="met_module2_list">
            <ul>
                <@shishuo_article_list_tag folderId=folder.folderId rows=10 page="${page}">
                    <#list tag_article_list as item>
                        <li class="list_1">
                            <h2>
                                <a href="<@shishuo_article_url_tag articleId="${item.articleId}"/>"
                                   title="${item.title}" target="_self">
                                    <i class="fa fa-caret-right"></i>${item.title}</a>
                            </h2>
                            <span class="time">${item.createTime?date}</span>
                        </li>
                    </#list>
                </@shishuo_article_list_tag>
            </ul>
            <div class="met_pager">
                <@shishuo_article_list_tag folderId=folder.folderId rows=10 page="${page}">
                    <#if page gt 1>
                        <a href="<@shishuo_folder_url_tag folderId=folder.folderId page=1/>" class="PreA">首页</a>
                        <a href="<@shishuo_folder_url_tag folderId=folder.folderId page="${page-1}"/>"
                           class="PreA">上一页</a>
                    </#if>
                    <#if page<pages>
                        <a href="<@shishuo_folder_url_tag folderId=folder.folderId page="${page+1}"/>"
                           class="NextA">下一页</a>
                        <a href="<@shishuo_folder_url_tag folderId=folder.folderId page="${pages}"/>"
                           class="PreA">末页</a>
                    </#if>
                </@shishuo_article_list_tag>
            </div>
        </div>
    <#elseif folder_father.ename=="products">
        <div class="met_module3_list">
            <ul class="list_1" style="visibility: visible;">
                <@shishuo_article_list_tag folderId=folder.folderId rows=10 page="${page}">
                    <#list tag_article_list as item>
                        <li style="width: 33.3333%;">
                            <a href="<@shishuo_article_url_tag articleId="${item.articleId}"/>" title="${item.title}" target="_self" style="width: 215px;">
                                <img src="${BASE_PATH}/${item.pictureUrl}" width="215" height="171">
                                <h2 style="height: 22px;">${item.title}</h2>
                            </a>
                        </li>
                    </#list>
                </@shishuo_article_list_tag>
            </ul>
            <div class="met_clear"></div>
            <div class="metpager">
                <@shishuo_article_list_tag folderId=folder.folderId rows=10 page="${page}">
                    <#if page gt 1>
                        <a href="<@shishuo_folder_url_tag folderId=folder.folderId page=1/>" class="PreA">首页</a>
                        <a href="<@shishuo_folder_url_tag folderId=folder.folderId page="${page-1}"/>"
                           class="PreA">上一页</a>
                    </#if>
                    <#if page<pages>
                        <a href="<@shishuo_folder_url_tag folderId=folder.folderId page="${page+1}"/>"
                           class="NextA">下一页</a>
                        <a href="<@shishuo_folder_url_tag folderId=folder.folderId page="${pages}"/>"
                           class="PreA">末页</a>
                    </#if>
                </@shishuo_article_list_tag>
            </div>
        </div>
    <#else>
        <div class="met_editor met_module1">
            <div>
            ${folder.content}
            </div>
            <div class="clear"></div>
        </div>
    </#if>
    </div>
    <div class="met_clear"></div>
</section>
#include "footer.ftl">
