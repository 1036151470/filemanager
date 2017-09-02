<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <script src="bootstrap.min.js"></script>
    <link rel="stylesheet" href="bootstrap.css">
    <link rel="stylesheet" href="bootstrap-theme.min.css">
    <script src="jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" href="style.css">
</head>

<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-6 column">

            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">填入文件夹路径</h3>

                    <form action="/" method="post">
                        <input type="text" class="form-control" id="name" placeholder="请输入名称" name="addlist">
                        <button type="submit" class="btn btn-default btn-primary">列出文件</button>
                    </form>
                </div>
                <div class="panel-body">
                    </br>

                    <table class="table table-hover">
                        <tbody>
                        <#if filelist??>
                            <#list filelist as list>
                            <tr>
                                <td>
                                    <h4>${list.name}</h4>
                                </td>
                                <td>
                                    <div style="text-align: right;">
                                        <form action="/removefile" method="post">
                                            <input hidden="hidden" value="${list.getAbsoluteFile}" type="text"
                                                   name="removefile">
                                            <button type="submit" class="btn btn-default btn-primary">删除</button>
                                        </form>
                                    </div>
                                </td>

                                <td>
                                    <div style="text-align: left;">
                                        <form action="/changename" method="post">
                                            <input hidden="hidden" value="${list.getAbsoluteFile}" name="removefile">
                                            <input type="text" name="changename">
                                            <button type="submit" class="btn btn-default btn-primary">重命名</button>
                                        </form>
                                    </div>

                                </td>
                            </tr>
                            </#list>
                        </#if>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-md-6 column">

            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">填入文件夹路径</h3>

                    <form action="/" method="post">
                        <input type="text" class="form-control" id="name" placeholder="请输入名称" name="addlist">
                        <button type="submit" class="btn btn-default btn-primary">列出文件</button>
                    </form>
                </div>
                <div class="panel-body">
                    </br>
                    <table class="table table-hover">
                        <tbody>
                        <#if filelist??>
                            <#list filelist as list>
                            <tr>
                                <td>
                                    <h4>${list.name}</h4>
                                </td>
                                <td>
                                    <div style="text-align: right;">
                                        <form action="/removefile" method="post">
                                            <input hidden="hidden" value="${list.getAbsoluteFile}" type="text"
                                                   name="removefile">
                                            <button type="submit" class="btn btn-default btn-primary">删除</button>
                                        </form>
                                    </div>
                                </td>

                                <td>
                                    <div style="text-align: left;">
                                        <form action="/changename" method="post">
                                            <input hidden="hidden" value="${list.getAbsoluteFile}" name="removefile">
                                            <input type="text" name="changename">
                                            <button type="submit" class="btn btn-default btn-primary">重命名</button>
                                        </form>
                                    </div>

                                </td>
                            </tr>
                            </#list>
                        </#if>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
