<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="base" value="${pageContext.request.contextPath}" scope="request"/>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${base}/zui/css/zui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${base}/css/base.css"/>
    <link rel="stylesheet" type="text/css" href="${base}/lib/font-awesome-4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="${base}/css/reportboss.css"/>
    <script src="${base}/js/jquery.v3.5.1.js"></script>
    <script src="${base}/zui/js/zui.js"></script>
    <script src="${base}/lib/laydate/laydate.js"></script>
    <script src="${base}/lib/echarts/echarts.js"></script>
    <script src="${base}/js/exportPDF.js"></script>
    <title>报告老板</title>
</head>
<body id="body">
<div class="container-s">
    <div class="main">
        <div class="step" id="div1">
            <ul>
                <li class="fir active">
                    <div class="stepitem">
                        <span>1</span>
                        <p>填写报告内容</p>
                    </div>
                </li>
                <li class="last">
                    <div class="stepitem">
                        <span>2</span>
                        <p>保存/发送</p>
                    </div>
                </li>
            </ul>
        </div>
        <div class="article">
            <div class="reporthead">
                <a class="setcurrent" href="javascript: void(0);">设置业绩目标</a>
                <div class="txt-row reportname">
                    <span class="name">报告名称</span>
                    <span class="vicename">*报告顶部的大标题，如‘资产智管部业绩月度报告’</span>
                </div>
                <div class="row-s">
                    <input class="form-control" placeholder="示例：资产智管部业绩分析月报"/>
                </div>
                <div class="txt-row reportoverview">
                    <span class="name">报告概述</span>
                    <span class="vicename">*用于展示在报告首屏的内容，简单介绍报告的目的和背景，让阅读者更好理解您的报告。</span>
                </div>
                <div class="row-s">
                <textarea class="form-control" style="height: 100px;"
                          placeholder="示例：该报告从话务量、业绩、服务质量三个方面综合分析业绩现状，以便管理人员优化管理策略、人力成本和支出！"></textarea>
                </div>
            </div>
            <div class="reportbody">
                <div class="txt-row reporttxt">
                    <span class="name">报告正文</span>
                    <span class="vicename">*统计分析图表和分析内容，可创建多页</span>
                </div>
                <div class="row-s">
                    <div class="panel">
                        <div class="panel-body"><i class="fa fa-times-circle del-reportitem" aria-hidden="true"></i>
                            <div class="reportpage-w">
                                <div class="reportpageitem">
                                    <div class="title"><span>小标题：</span>
                                        <div class="title-w"><input class="form-control" placeholder="业绩报表"></div>
                                    </div>
                                    <div class="row-g">
                                        <div class="name">总体阐述：</div>
                                        <div class="con"><textarea class="form-control" style="height: 100px;"
                                                                   placeholder="示例：本月内催的业绩显著优于外包公司，应重点关注委外公司的业绩，提高业绩激励"></textarea>
                                        </div>
                                    </div>
                                    <div class="row-g">
                                        <div class="name">回款率分析</div>
                                        <div class="con">
                                            <div class="rg-right">
                                                <div class="sel-w"><select class="form-control">
                                                    <option>M1阶段</option>
                                                    <option>M1阶段</option>
                                                    <option>M1阶段</option>
                                                    <option>M1阶段</option>
                                                </select></div>
                                                <a class="set-btn" href="javascript: void(0);">设置</a> <a class="del-btn"
                                                                                                         href="javascript: void(0);">删除</a>
                                            </div>
                                            <ul class="nav nav-primary">
                                                <li class="active"><a href="###">漏斗</a></li>
                                                <li class=""><a href="###">趋势</a></li>
                                            </ul>
                                            <div class="echarts" id="echart1"
                                                 style="width: 100%;height: 260px;margin-top: -28px;"></div>
                                        </div>
                                    </div>
                                    <div class="row-g">
                                        <div class="name">报表解读：</div>
                                        <div class="con"><textarea class="form-control" style="height: 100px;"
                                                                   placeholder="示例：本月内催的业绩显著优于外包公司，应重点关注委外公司的业绩，提高业绩激励"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="reportpageitem">
                                    <div class="title"><span>小标题：</span>
                                        <div class="title-w"><input class="form-control" placeholder="业绩报表"></div>
                                    </div>
                                    <div class="row-g">
                                        <div class="name">总体阐述：</div>
                                        <div class="con"><textarea class="form-control" style="height: 100px;"
                                                                   placeholder="示例：本月内催的业绩显著优于外包公司，应重点关注委外公司的业绩，提高业绩激励"></textarea>
                                        </div>
                                    </div>
                                    <div class="row-g">
                                        <div class="name">回款率分析</div>
                                        <div class="con">
                                            <div class="rg-right">
                                                <div class="sel-w"><select class="form-control">
                                                    <option>M1阶段</option>
                                                    <option>M1阶段</option>
                                                    <option>M1阶段</option>
                                                    <option>M1阶段</option>
                                                </select></div>
                                                <a class="set-btn" href="javascript: void(0);">设置</a> <a class="del-btn"
                                                                                                         href="javascript: void(0);">删除</a>
                                            </div>
                                            <ul class="nav nav-primary">
                                                <li class="active"><a href="###">漏斗</a></li>
                                                <li class=""><a href="###">趋势</a></li>
                                            </ul>
                                            <div class="echarts" id="echart2"
                                                 style="width: 100%;height: 260px;margin-top: -28px;"></div>
                                        </div>
                                    </div>
                                    <div class="row-g">
                                        <div class="name">报表解读：</div>
                                        <div class="con"><textarea class="form-control" style="height: 100px;"
                                                                   placeholder="示例：本月内催的业绩显著优于外包公司，应重点关注委外公司的业绩，提高业绩激励"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="line"></div>
                            <a class="btn-addecharts" href="javascript: void(0);">添加统计图表</a>
                            <div class="page">第一页</div>
                        </div>
                    </div>
                </div>
                <div class="row-s">
                    <div class="panel">
                        <div class="panel-body"><i class="fa fa-times-circle del-reportitem" aria-hidden="true"></i>
                            <div class="reportpage-w">
                                <div class="reportpageitem">
                                    <div class="title"><span>小标题：</span>
                                        <div class="title-w"><input class="form-control" placeholder="业绩报表"></div>
                                    </div>
                                    <div class="row-g">
                                        <div class="name">总体阐述：</div>
                                        <div class="con"><textarea class="form-control" style="height: 100px;"
                                                                   placeholder="示例：本月内催的业绩显著优于外包公司，应重点关注委外公司的业绩，提高业绩激励"></textarea>
                                        </div>
                                    </div>
                                    <div class="row-g">
                                        <div class="name">回款率分析</div>
                                        <div class="con">
                                            <div class="rg-right">
                                                <div class="sel-w"><select class="form-control">
                                                    <option>M1阶段</option>
                                                    <option>M1阶段</option>
                                                    <option>M1阶段</option>
                                                    <option>M1阶段</option>
                                                </select></div>
                                                <a class="set-btn" href="javascript: void(0);">设置</a> <a class="del-btn"
                                                                                                         href="javascript: void(0);">删除</a>
                                            </div>
                                            <ul class="nav nav-primary">
                                                <li class="active"><a href="###">漏斗</a></li>
                                                <li class=""><a href="###">趋势</a></li>
                                            </ul>
                                            <div class="echarts" id="echart3"
                                                 style="width: 100%;height: 260px;margin-top: -28px;"></div>
                                        </div>
                                    </div>
                                    <div class="row-g">
                                        <div class="name">报表解读：</div>
                                        <div class="con"><textarea class="form-control" style="height: 100px;"
                                                                   placeholder="示例：本月内催的业绩显著优于外包公司，应重点关注委外公司的业绩，提高业绩激励"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="line"></div>
                            <a class="btn-addecharts" href="javascript: void(0);">添加统计图表</a>
                            <div class="page">第一页</div>
                        </div>
                    </div>
                </div>
            </div>
            <a class="addpage" href="javascript: void(0);"><span class="ablock"><i class="fa fa-plus-circle"
                                                                                   aria-hidden="true"></i>添加下一页</span></a>
            <div class="txt-row reportsummary">
                <span class="name">总结</span>
                <span class="vicename">*描述您的分析所得出的普遍性结论</span>
            </div>
            <div class="row-s">
                <textarea class="form-control" style="height: 100px;"
                          placeholder="示例：该报告从话务量、业绩、服务质量三个方面综合分析业绩现状，以便管理人员优化管理策略、人力成本和支出！"></textarea>
            </div>
            <div class="ope-w">
                <a class="preview" href="javascript: void(0);">预览</a>
                <a class="save" href="javascript: void(0);">保存</a>
                <a class="send" href="javascript: void(0);">发送</a>
            </div>
        </div>
    </div>
</div>
</body>

<div class="modal" id="addecharts">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span
                        class="sr-only">关闭</span></button>
                <h4 class="modal-title">添加统计图表</h4>
            </div>
            <div class="modal-body">
                <div>
                    <ul class="nav nav-primary">
                        <li class="active"><a href="###">漏斗</a></li>
                        <li class=""><a href="###">趋势</a></li>
                    </ul>
                </div>
                <div class="text-center">
                    <div class="selection-container">
                        <div class="select-box left">
                            <div class="select-box-title">
                                <input type="checkbox" class="checkbox-all" id="checkbox-all1"/>
                                <label for="checkbox-all1"></label>
                                <span>列表一</span>
                            </div>
                            <div class="select-content">
                                <ul class="unselect-ul">
                                    <li>
                                        <input type="checkbox" class="checkboxs" id="tyue-checkbox-blue1"/>
                                        <label for="tyue-checkbox-blue1"></label>
                                        <span>备选项1</span>
                                    </li>
                                    <li>
                                        <input type="checkbox" class="checkboxs" id="tyue-checkbox-blue2"/>
                                        <label for="tyue-checkbox-blue2"></label>
                                        <span>备选项2</span>
                                    </li>
                                    <li>
                                        <input type="checkbox" class="checkboxs" id="tyue-checkbox-blue3"/>
                                        <label for="tyue-checkbox-blue3"></label>
                                        <span>备选项3</span>
                                    </li>
                                    <li>
                                        <input type="checkbox" class="checkboxs" id="tyue-checkbox-blue4"/>
                                        <label for="tyue-checkbox-blue4"></label>
                                        <span>备选项4</span>
                                    </li>
                                    <li>
                                        <input type="checkbox" class="checkboxs" id="tyue-checkbox-blue5"/>
                                        <label for="tyue-checkbox-blue5"></label>
                                        <span>备选项5</span>
                                    </li>
                                    <li>
                                        <input type="checkbox" class="checkboxs" id="tyue-checkbox-blue6"/>
                                        <label for="tyue-checkbox-blue6"></label>
                                        <span>备选项6</span>
                                    </li>
                                    <li>
                                        <input type="checkbox" class="checkboxs" id="tyue-checkbox-blue7"/>
                                        <label for="tyue-checkbox-blue7"></label>
                                        <span>备选项7</span>
                                    </li>
                                    <li>
                                        <input type="checkbox" class="checkboxs" id="tyue-checkbox-blue8"/>
                                        <label for="tyue-checkbox-blue8"></label>
                                        <span>备选项8</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="arrows-box">
                            <div class="arrow-btns">
                                <button class="arrow-btn right"><span>&#8250;</span></button>
                                <button class="arrow-btn left"><span>&#8249;</span></button>
                            </div>
                        </div>
                        <div class="select-box right">
                            <div class="select-box-title">
                                <input type="checkbox" class="checkbox-all" id="checkbox-all2"/>
                                <label for="checkbox-all2"></label>
                                <span>列表二</span>
                            </div>
                            <div class="select-content">
                                <ul class="selected-ul">
                                    <li>
                                        <input type="checkbox" class="checkboxs" id="tyue-checkbox-blue9"/>
                                        <label for="tyue-checkbox-blue9"></label>
                                        <span>备选项9</span>
                                    </li>
                                    <li>
                                        <input type="checkbox" class="checkboxs" id="tyue-checkbox-blue10"/>
                                        <label for="tyue-checkbox-blue10"></label>
                                        <span>备选项10</span>
                                    </li>
                                    <li>
                                        <input type="checkbox" class="checkboxs" id="tyue-checkbox-blue11"/>
                                        <label for="tyue-checkbox-blue11"></label>
                                        <span>备选项11</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary addsave">保存</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="modal-send">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span
                        class="sr-only">关闭</span></button>
                <h4 class="modal-title">发送报告</h4>
            </div>
            <div class="modal-body">
                <div class="send-w">
                    <div class="row">
                        <div class="col-xs-8">
                            <label class="checkradio-inline">
                                <div class="radio-primary"><input type="radio" name="primaryRadioGroup1"
                                                                  id="primaryradio1"><label
                                        for="primaryradio1">链接</label></div>
                            </label>
                            <label class="checkradio-inline">
                                <div class="radio-primary"><input type="radio" name="primaryRadioGroup1"
                                                                  checked="checked" id="primaryradio3"><label
                                        for="primaryradio3">PDF</label></div>
                            </label>
                            <button class="btn btn-primary text-right">发送</button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-7"><input class="form-control"/></div>
                        <div class="send-ope">
                            <button class="btn btn-primary">复制链接</button>
                            <button class="btn btn-primary">下载PDF</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 穿梭框操作 -->
<script>
    $(function () {

        // 穿梭框列表行点击事件
        $('.select-content').on('click', 'li', function (e) {
            if ($(this).find("input").is(":checked")) {
                $(this).find("input").prop("checked", false);
                if (allcheckedFn(this, true)) {
                    $(this).closest(".select-box").find(".select-box-title input").prop("checked", false);
                }
            } else {
                $(this).find("input").prop("checked", true);
                if (allcheckedFn(this, false)) {
                    $(this).closest(".select-box").find(".select-box-title input").prop("checked", true);
                }
            }
            btn_status();
        });

        // 全选事件
        $(".selection-container").on("click", ".select-box-title", function () {
            if ($(this).find("input").is(':checked')) {
                $(this).find('input').prop('checked', false);
                $(this).next(".select-content").find("input").prop('checked', false);
            } else {
                $(this).find('input').prop('checked', true);
                $(this).next(".select-content").find("input").prop('checked', true);
            }
            btn_status();
        })

        // 判断是否全部选中（boo传false）|或全部未选中（boo传true）
        function allcheckedFn(that, boo) {
            var flag = !boo;
            $(that).parent().find("li").each(function (k, v) {
                // 全选中
                if (boo) {
                    if ($(v).find("input").is(":checked")) {
                        flag = boo;
                        return;
                    }
                } else {
                    if (!$(v).find("input").is(":checked")) {
                        flag = boo;
                        return;
                    }
                }
            })
            return flag;
        }

        // 左右操作按钮是否被激活
        function btn_status() {
            var btn1 = document.getElementsByClassName('right')[0]
            var btn2 = document.getElementsByClassName('left')[1]
            var left_ul = document.getElementsByClassName('unselect-ul')
            var right_ul = document.getElementsByClassName('selected-ul')
            var left_ul_li = left_ul[0].children
            var right_ul_li = right_ul[0].children
            var left_btn = false
            var right_btn = false
            for (var i = 0; i < left_ul_li.length; i++) {
                if (left_ul_li[i].firstElementChild.checked == true) {
                    left_btn = true
                }
            }
            for (var i = 0; i < right_ul_li.length; i++) {
                if (right_ul_li[i].firstElementChild.checked == true) {
                    right_btn = true
                }
            }
            if (left_btn) {
                btn1.classList.add('btn-cursor')
            } else {
                btn1.classList.remove('btn-cursor')
            }
            if (right_btn) {
                btn2.classList.add('btn-cursor')
            } else {
                btn2.classList.remove('btn-cursor')
            }
        }

        // 左右操作按钮绑定事件
        $('.arrow-btn').click(function () {
            var checkboxs, origin, target, num = 0;
            if ($(this).hasClass('right')) {
                origin = $('.unselect-ul');
                target = $('.selected-ul');
            } else {
                origin = $('.selected-ul');
                target = $('.unselect-ul');
            }
            checkboxs = origin.find('.checkboxs');
            for (var i = 0; i < checkboxs.length; i++) {
                if ($(checkboxs[i]).prop('checked')) {
                    var that = $(checkboxs[i]).parent().clone();
                    that.children('input').prop('checked', false);
                    target.append(that);
                    $(checkboxs[i]).parent().remove();
                } else {
                    num++;
                }
            }
            if (checkboxs.length == num) {
            } else {
                origin.parent().prev().find('.checkbox-all').prop('checked', false);
            }
            btn_status();
        })
    })

    function stopFunc(e) {
        e.stopPropagation ? e.stopPropagation() : e.cancelBubble = true;
    }
</script>
<!-- 生成图表 -->
<script>

    $(function () {

        $(".reportbody").on("click", ".nav li a", function () {
            $(this).parent().addClass("active").siblings().removeClass("active");
        })

        var myChart1 = echarts.init(document.getElementById("echart1"));
        var myChart2 = echarts.init(document.getElementById("echart2"));
        var myChart3 = echarts.init(document.getElementById("echart3"));

        // data1为折线图数据（4条），data2为折线图数据（2条），tab切换时，刷新数据。
        var Linedata1 = {
            id: "echart1",
            dataY: ['00:00', '01:00', '02:00', '03:00', '04:00', '05:00', '06:00', '07:00', '08:00', '09:00', '10:00', '11:00'],
            datag: [
                {
                    name: '回款金额',
                    data: [120, 82, 201, 134, 190, 230, 110, 120, 82, 201, 134, 190]
                },
                {
                    name: '回退户数',
                    data: [110, 72, 51, 74, 30, 100, 200, 160, 182, 201, 34, 90]
                },
                {
                    name: '回款率',
                    data: [50, 60, 70, 80, 60, 70, 80, 60, 30, 70, 60, 50]
                },
                {
                    name: '回退率',
                    data: [200, 130, 100, 70, 90, 30, 50, 45, 62, 70, 110, 130]
                },
            ]
        }
        var Linedata2 = {
            id: "echart2",
            dataY: ['00:00', '01:00', '02:00', '03:00', '04:00', '05:00', '06:00', '07:00', '08:00', '09:00', '10:00', '11:00'],
            datag: [
                {
                    name: '回款金额',
                    data: [120, 82, 201, 134, 190, 230, 110, 120, 82, 201, 134, 190]
                },
                {
                    name: '回退户数',
                    data: [110, 72, 51, 74, 30, 100, 200, 160, 182, 201, 34, 90]
                },
                {
                    name: '回款率',
                    data: [50, 60, 70, 80, 60, 70, 80, 60, 30, 70, 60, 50]
                },
                {
                    name: '回退率',
                    data: [200, 130, 100, 70, 90, 30, 50, 45, 62, 70, 110, 130]
                },
            ]
        }

        //初始化图表
        fLinechart('echart1', myChart1, Linedata1);
        fLinechart('echart2', myChart2, Linedata2);
        fLinechart('echart3', myChart3, Linedata2);

        // 调整窗口大小时调整图表大小
        $(window).resize(function () {
            myChart1.resize();
            myChart2.resize();
            myChart3.resize();
        })

    })

    // 折线图数据拼接
    function fLinechartSeries(data) {
        var arrData = [];

        for (var i = 0; i < data.datag.length; i++) {
            var tmp = {
                name: '回款金额',
                type: 'line', //折线图
                stack: '图形1', //相同的stack名称就会形成叠加图
                smooth: false, //拆线平滑
                symbol: 'circle',     //设定为实心点
                symbolSize: 2,        //设定实心点的大小
                data: [120, 82, 201, 134, 190, 230, 110, 120, 82, 201, 134, 190]
            };
            tmp["name"] = data.datag[i].name;
            tmp["data"] = data.datag[i].data;
            arrData.push(tmp);
        }
        return arrData;
    }

    // 折线图name拼接
    function fLinechartName(data) {
        var arrName = [];
        for (var i = 0; i < data.datag.length; i++) {
            arrName.push(data.datag[i].name);
        }
        return arrName;
    }

    // 折线图生成
    function fLinechart(id, myChart, data) {
        var option = {
            color: ['#3BA0FF', '#FAD337', '#4DCB73', '#F2637B', '#36CBCB', '#975FE4', '#ffc53d', '#d3adf7'],
            tooltip: {
                trigger: 'axis',
                formatter: ''
            },
            grid: {
                top: '20%',
                left: '1%',
                right: '3%',
                bottom: '20%',
                containLabel: true
            },
            legend: {
                data: fLinechartName(data),
                type: 'plain',          // 普通图例
                orient: 'horizontal',   // 水平
                icon: 'rect',
                left: '200',               // 左距离
                top: '0',                // 上距离
                bottom: 20,             // 下距离
                width: 450,              // 宽度
                itemGap: 20,            // 间隔
                itemWidth: 26,          // 图形宽度。
                itemHeight: 5,         // 图形高度。
                textStyle: {
                    fontSize: 12,
                    color: '#666',
                    height: 18,
                    lineHeight: 5
                }
            },
            dataZoom: [{
                type: 'inside',
                start: 0,
                end: 100,
                type: 'slider', //slider表示有滑动块的，inside表示内置的
                backgroundColor: "#F8F8F8", //组件的背景颜色
                fillerColor: "rgba(255,255,255,0.1)", //选中范围的填充颜色。
                borderColor: "red", //边框颜色。
                dataBackground: { //数据阴影的样式。
                    lineStyle: {
                        color: "#DEDEDE"
                    }, //阴影的线条样式
                    areaStyle: {
                        color: "#DEDEDE"
                    }, //阴影的填充样式
                }
            }, {
                start: 70,
                end: 100,
                handleIcon: 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
                handleSize: '80%',
                handleStyle: {
                    color: '#fff',
                    shadowBlur: 3,
                    shadowColor: 'rgba(0, 0, 0, 0.6)',
                    shadowOffsetX: 2,
                    shadowOffsetY: 2
                }
            }],
//        toolbox: {
//            show: true,
//            feature: {
//                mark: {show: true},
//                dataView: {show: true, readOnly: false},
//                magicType: {show: true, type: ['line', 'bar', 'stack', 'tiled']},
//                restore: {show: true},
//                saveAsImage: {show: true}
//            }
//        },
            calculable: true,
            xAxis: [
                {
                    type: 'category',
                    boundaryGap: false,
                    axisLabel: {
                        show: true,
                        textStyle: {
                            color: '#666',  //更改坐标轴文字颜色
                            fontSize: 12      //更改坐标轴文字大小
                        }
                    },
                    axisLine: {
                        lineStyle: {
                            color: "#eee"
                        }
                    },
                    data: data.dataY
                }
            ],
            yAxis: [
                {
                    type: 'value',
                    axisLabel: {
                        show: true,
                        textStyle: {
                            color: '#666',  //更改坐标轴文字颜色
                            fontSize: 12      //更改坐标轴文字大小
                        }
                    },
                    axisLine: {
                        show: false
                    },
                    axisTick: {
                        show: false
                    },
                    splitLine: {
                        lineStyle: {
                            type: 'dashed',
                            color: '#DDD'
                        }
                    },
                }
            ],
            series: fLinechartSeries(data)
        }
        myChart.setOption(option, true);
    }

</script>
<!-- 页面操作 -->
<script>
    $(function () {
        $(".reportbody").on("click", ".del-reportitem", function () {
            $(this).closest(".row-s").remove();
        })

        var reportantechartmp = '<div class="reportpageitem">' +
            '    <div class="title">' +
            '        <span>小标题：</span>' +
            '        <div class="title-w"><input class="form-control" placeholder="业绩报表"/></div>' +
            '    </div>' +
            '    <div class="row-g">' +
            '        <div class="name">总体阐述：</div>' +
            '        <div class="con">' +
            '           <textarea class="form-control" style="height: 100px;"' +
            '               placeholder="示例：本月内催的业绩显著优于外包公司，应重点关注委外公司的业绩，提高业绩激励"></textarea>' +
            '        </div>' +
            '    </div>' +
            '<div class="row-g">' +
            '    <div class="name">回款率分析</div>' +
            '    <div class="con">' +
            '        <div class="rg-right">' +
            '            <div class="sel-w">' +
            '                <select class="form-control">' +
            '                    <option>M1阶段</option>' +
            '                    <option>M1阶段</option>' +
            '                    <option>M1阶段</option>' +
            '                    <option>M1阶段</option>' +
            '                </select>' +
            '            </div>' +
            '            <a class="set-btn" href="javascript: void(0);">设置</a>' +
            '            <a class="del-btn" href="javascript: void(0);">删除</a>' +
            '        </div>' +
            '        <ul class="nav nav-primary">' +
            '            <li class="active">' +
            '                <a href="###">漏斗</a>' +
            '            </li>' +
            '            <li class="">' +
            '                <a href="###">趋势</a>' +
            '            </li>' +
            '        </ul>' +
            '        <div class="echarts" id="echart1" style="width: 100%;height: 260px;margin-top: -28px;"></div>' +
            '    </div>' +
            '</div>' +
            '<div class="row-g">' +
            '    <div class="name">报表解读：</div>' +
            '    <div class="con">' +
            '       <textarea class="form-control" style="height: 100px;"' +
            '           placeholder="示例：本月内催的业绩显著优于外包公司，应重点关注委外公司的业绩，提高业绩激励"></textarea>' +
            '    </div>' +
            '    </div>' +
            '</div>';

        $(".reportbody").on("click", ".btn-addecharts", function () {
            $("#addecharts").modal("show");
            $(this).parent().find(".reportpage-w").append(reportantechartmp);
        })

        var reportantmp = '<div class="row-s">' +
            '<div class="panel">' +
            '<div class="panel-body">' +
            '    <i class="fa fa-times-circle del-reportitem" aria-hidden="true"></i>' +
            '    <div class="reportpage-w">' +
            // '       <div class="reportpageitem">' +
            // '           <div class="title">' +
            // '               <span>小标题：</span>' +
            // '               <div class="title-w"><input class="form-control" placeholder="业绩报表"/></div>' +
            // '           </div>' +
            // '           <div class="row-g">' +
            // '               <div class="name">总体阐述：</div>' +
            // '               <div class="con">' +
            // '                  <textarea class="form-control" style="height: 100px;"' +
            // '                      placeholder="示例：本月内催的业绩显著优于外包公司，应重点关注委外公司的业绩，提高业绩激励"></textarea>' +
            // '               </div>' +
            // '           </div>' +
            // '       </div>' +
            '    </div>' +
            '    <div class="line"></div>' +
            '    <a class="btn-addecharts" href="javascript: void(0);">添加统计图表</a>' +
            '    <div class="page">第一页</div>' +
            '</div>'

        // 添加页按钮
        $(".addpage").click(function () {
            $(".reportbody").append(reportantmp);
        })

        // 添加统计图表按钮
        $("#addecharts .nav li a").click(function () {
            $(this).parent().addClass("active").siblings().removeClass("active");
        })

        // 穿梭框保存按钮
        $(".addsave").click(function () {
            $(this).closest(".modal").modal("hide");
        })

        // 删除单个图表
        $(".reportbody").on("click", ".del-btn", function () {
            $(this).closest(".reportpageitem").remove();
        })

        // 发送
        $(".send").click(function () {
            $("#modal-send").modal("show");
        })
    })
</script>


<%--要等页面完全加载完后执行  不然会缺少部分--%>
<script type="text/javascript">


    window.onload = function() {
        var r = confirm("请按按钮");
        if (r == true) {
            //第一个参数为要导出的标签id  第二个为导出文件夹
            exportPDF("body","D:/export");
        } else {

        }

    };
</script>
</html>




