<#include "header.ftl"/>
<style>
    .hide {
        display: none;
    }

    .show {
        display: block;
    }
</style>
<script>

    var productIndex = 1;

    $(function () {

        function go() {
            $e = $('#slidesImgs li');
            var max = $e.length - 1;
            var cur = 0;
            $e.each(function (i, item) {
                if ($(this).hasClass('show')) {
                    cur = i;
                    $(this).removeClass("show").addClass("hide");
                }
            });

            var next = max == cur ? 0 : cur + 1;
            $e.each(function (i, item) {
                if (i == next) {
                    $(this).removeClass("hide").addClass("show");
                }
            });

            $("#slideBar li").each(function (i) {
                if (i == next) {
                    $(this).addClass("on");
                } else {
                    $(this).removeClass("on");
                }
            })
        }

        function go2() {
            var left = -productIndex * 225;
            $(".main2_ny ul").css("left", left + "px");
            if (productIndex == 7) {
                productIndex = 0;
            } else {
                productIndex += 1;
            }
        }

        setInterval(go, 3000);
        setInterval(go2, 2500);
    });
</script>
<div class="tem_banner">
    <ul class="slides" style="height:500px;">
        <li style="background:url(${TEMPLATE_BASE_PATH}/images/ad.jpg) no-repeat center center; height:500px;"></li>
    </ul>
</div>
<div class="main">
    <div class="main1">
        <div class="main1_1 height">
            <div class="main1_1_t s_biaoti">
                <div class="left">
                    <a href="javascript:void(0);" title="图片新闻" target="_self" style="cursor: default;">图片新闻</a><span>PHOTO
                    NEWS</span>
                </div>
                <div class="clear"></div>
            </div>
            <div class="comiis_wrapad" id="slideContainer">
                <div id="frameHlicAe" class="frame cl">
                    <div class="temp"></div>
                    <div class="block">
                        <div class="cl">
                            <ul class="slideshow" id="slidesImgs">
                            <#assign i=1/>
                            <@shishuo_headline_list_tag>
                                <#list tag_headline_list as item>
                                    <li class="${(i==1)?string("show","hide")}">
                                        <a href="${item.url}" target="_self" title="${item.name}">
                                            <img src="${item.picture}"
                                                 alt="${item.name}"
                                                 title="${item.name}"
                                                 style="width:298px; height: 205px;"></a>
                                        <span class="title">${item.name}</span>
                                    </li>
                                    <#assign i=i+1/>
                                </#list>
                            </@shishuo_headline_list_tag>
                            </ul>
                        </div>
                        <div class="slidebar" style="z-index:99;" id="slideBar">
                            <ul>
                            <#assign i=1/>
                            <#list tag_headline_list as s>
                                <li class="${(i==1)?string("on","")}">${i}</li>
                                <#assign i=i+1/>
                            </#list>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main1_2 height">
            <div class="main1_2_t s_biaoti">
                <div class="left">
                    <a href="/folder/7.htm" title="新闻列表" target="_self">新闻列表</a><span>NEWS CENTER</span>
                </div>
                <div class="right"><a href="/folder/7.htm" title="新闻列表" target="_self">MORE +</a></div>
                <div class="clear"></div>
            </div>
            <div class="main1_2_ny">
                <div class="news_list">
                    <ul>
                    <@shishuo_article_list_tag folderId=7 rows=10>
                        <#list tag_article_list as item>
                            <li>
                                <div class="left">
                                    <a href="<@shishuo_article_url_tag articleId="${item.articleId}"/>" target="_self"
                                       title="${item.title}">
                                    ${item.title}
                                    </a>
                                </div>
                                <div class="right"><span>${item.updateTime?datetime}</span></div>
                            </li>
                        </#list>
                    </@shishuo_article_list_tag>
                    </ul>
                </div>
            </div>
        </div>
        <div class="main1_3 height">
            <div class="main1_3_t s_biaoti">
                <div class="left">
                    <a href="/folder/15.htm" title="联系我们" target="_self">联系我们</a><span>CONTACT US</span>
                </div>
                <div class="clear"></div>
            </div>
        <#include "contact.ftl"/>
        </div>
        <div class="clear"></div>
    </div>

    <div class="main2">
        <div class="main2_t s_biaoti">
            <div class="left">
                <a href="/folder/8.htm" title="推荐产品" target="_self">推荐产品</a><span>PRODUCTS DISPLAY</span>
            </div>
            <div class="right"><a href="/folder/8.htm" title="推荐产品" target="_self">MORE +</a></div>
            <div class="clear"></div>
        </div>
        <div class="main2_ny" style="width: 1000px; height: 323px;   overflow: hidden;">
            <ul style="width: 3000px;position: relative;left: 0px;">
            <@shishuo_article_list_tag folderId=8 rows=12>
                <#list tag_article_list as item>
                    <li class="pic_case">
                        <a style="display: block;line-height: 0;"
                           href="<@shishuo_article_url_tag articleId="${item.articleId}"/>"
                           title="${item.title}" target="_self">
                            <img src="${item.pictureUrl}"
                                 title="${item.title}" alt="${item.title}" width="215" height="323"></a>
                    </li>
                </#list>
            </@shishuo_article_list_tag>
            </ul>
        </div>
    </div>
    <div class="clear"></div>
    <div class="index-links">
        <div class="main1_2_t s_biaoti">
            <div class="left">
                <a href="news/" title="友情链接" target="_self">友情链接</a><span>LINKS</span>
            </div>
            <div class="clear"></div>
        </div>
    <#--<div class="active clear">-->
    <#--<div class="txt">-->
    <#--<ul class="list-none">-->
    <#--<li><a href="http://tmp.metinfo.cn/met099/" title="" target="_self">力士乐</a></li>-->
    <#--</ul>-->
    <#--</div>-->
    <#--</div>-->
        <div class="clear"></div>
    </div>
</div>
<#include "footer.ftl"/>
