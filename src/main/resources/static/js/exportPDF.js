//引入html2canvas.js文件
document.write("<script language=javascript src='./js/html2canvas.js'></script>");

//导出pdf方法
// elementId 要写入pdf的 标签id
// exportFilePath 导出到的文件夹
function exportPDF(elementId, exportFilePath) {
    new html2canvas(document.getElementById(elementId), {
        allowTaint: true,
        useCORS: true,
        backgroundColor: "transparent"
    }).then(canvas => {
        var context = canvas.getContext('2d');
        // 【重要】关闭抗锯齿
        context.mozImageSmoothingEnabled = false;
        context.webkitImageSmoothingEnabled = false;
        context.msImageSmoothingEnabled = false;
        context.imageSmoothingEnabled = false;

        //生成表单，提交到后台
        let exportUrl = "/exportPDF"
        let form = $("<form></form>");
        form.attr('action', exportUrl);
        form.attr('method', 'post');
        let input1 = $("<input type='hidden' name='base64Info' />");
        input1.attr('value', canvas.toDataURL());
        form.append(input1);
        let input2 = $("<input type='hidden' name='exportFilePath' />");
        input2.attr('value', exportFilePath);
        form.append(input2);
        form.appendTo("body");
        form.submit();
    });
}