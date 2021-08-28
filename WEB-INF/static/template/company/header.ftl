<html>
<head>
    <meta charset="utf-8">
    <title>江苏前文智能科技有限公司</title>
    <meta name="description" content="江苏前文智能科技有限公司">
    <meta name="keywords" content="江苏前文智能科技有限公司">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
    <link href="favicon.ico" rel="shortcut icon">
    <link rel="stylesheet" type="text/css" href="${TEMPLATE_BASE_PATH}/css/metinfo.css">
    <link rel="stylesheet" type="text/css" href="${TEMPLATE_BASE_PATH}/css/font-awesome.min.css">
    <script src="${TEMPLATE_BASE_PATH}/js/jquery.js"></script>
</head>
<body>
<div class="header">
    <div class="zhuheadder1">
        <div class="neizhuheader1">
            <div class="zhead">
                <p>欢迎光临江苏前文智能科技有限公司！</p>
            </div>
        </div>
    </div>
    <div class="zhuheader2">
        <div class="neizhuheader2">
            <div class="clear"></div>
            <div class="logo" style="position: relative;">
                <a href="" title="" style="position: absolute;left: 0px;top: -10px;">
                    <img src="${TEMPLATE_BASE_PATH}/images/logo.png" alt="" title=""
                         style="margin:17px 0px 0px 0px;width: 160px"> </a>
            </div>
            <div class="navi">
                <ul>
                <#--<li style="width:118.33333333333px;" class="navhover"><a href="" title="首页">首页</a></li>-->
                <@shishuo_folder_list_tag folderId=0>
                    <li style="width:118.33333333333px;" class="<#if 0==g_folderId>navhover</#if>">
                        <a href="/" title="首页">首页</a>
                    </li>
                    <#list tag_folder_list as tag_folder>
                        <li style="width:118.33333333333px;"
                            class="<#if tag_folder.folderId==g_folderId>navhover</#if>">
                            <a href="<@shishuo_folder_url_tag folderId=tag_folder.folderId/>">${tag_folder.name}</a>
                        </li>
                    </#list>
                </@shishuo_folder_list_tag>
                </ul>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>
<div class="clear"></div>
