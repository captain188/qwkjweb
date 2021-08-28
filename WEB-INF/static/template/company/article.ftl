<#include "header.ftl">
<section class="met_section  met_section_sehed">
    <section class="met_section_head">
        <div class="left ny_loc font_14">当前位置：<a href="/" title="首页">首页</a> &gt;
            <a href="../news/">${folder_father.name}</a> &gt;
            <a href="../news/news_11_1.html">${folder.name}</a></div>
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
        <#--<section class="met_related">-->
            <#--<h2>您可能喜欢</h2>-->
            <#--<ul>-->
                <#--<li><a href="news31.html" title="2014新兴工程机械领域将成亮点-产能过剩形势下">1. 2014新兴工程机械领域将成亮点-产能过剩形势下</a></li>-->
                <#--<li><a href="news30.html" title="减速机发展空间的决策">2. 减速机发展空间的决策</a></li>-->
                <#--<li><a href="news29.html" title="中国工程机械出口市场">3. 中国工程机械出口市场</a></li>-->
                <#--<li><a href="news28.html" title="对冷焊机焊接工艺的控制措施">4. 对冷焊机焊接工艺的控制措施</a></li>-->
            <#--</ul>-->
        <#--</section>-->
    </aside>
    <div class="right ny_r">
        <div class="left ny_t01">${folder.name}</div>
        <div class="met_clear"></div>
        <section class="met_module2">
            <h1 class="met_title">${article.title}</h1>
            <div class="met_infos" style="text-align: right;">
                <span class="met_time">${article.createTime?datetime}</span>
                <span class="met_source"><a href="../" title="">江苏前文智能科技有限公司</a></span>
            </div>
            <div class="met_editor">
            ${article.content}
            </div>
        </section>
    </div>
    <div class="met_clear"></div>
</section>
<#include "footer.ftl">