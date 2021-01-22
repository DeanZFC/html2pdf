package com.hbsc.controller;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfWriter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import sun.misc.BASE64Decoder;

import java.io.*;
import java.util.UUID;

/**
 * @Author zfc
 * @Date 2021/1/13
 */
@Controller
public class Html2PdfController {

    @RequestMapping("/")
    public String index(){
        return "index";
    }

    /**
     * 导出PDF start
     */
    @PostMapping("/exportPDF")
    @ResponseBody
    public String exportPDF(String base64Info, String exportFilePath) throws IOException, DocumentException {
        String newFileName = UUID.randomUUID().toString();
        //如果文件夹不存在，创建文件夹
        File file = new File(exportFilePath);
        if (!file.exists()){
            file .mkdir();
        }
        //将html下载成图片
        generatePng(exportFilePath,newFileName,base64Info);
        //将图片转换成pdf
        generatePdfByPng(exportFilePath,newFileName);
        return "下载成功，下载目录:"+exportFilePath+"  文件名称："+newFileName+".pdf";
    }

    //根据base64Info 生成png
    public void generatePng(String exportFilePath, String name, String base64Info){
        String newPngName = name + ".png";
        base64Info = base64Info.replaceAll(" ", "+");
        BASE64Decoder decoder = new BASE64Decoder();
        String[] arr = base64Info.split("base64,");
        byte[] buffer;
        try {
            buffer = decoder.decodeBuffer(arr[1]);
        } catch (IOException e) {
            throw new RuntimeException();
        }
        OutputStream output = null;
        try {
            output = new FileOutputStream(new File(exportFilePath+"/"+newPngName));//生成png文件
            output.write(buffer);
            output.flush();
            output.close();
        }  catch (IOException e) {
            e.printStackTrace();
        }
    }

    //通过png文件来生成pdf文件
    public void generatePdfByPng(String exportFilePath, String name) throws IOException, DocumentException {
        String pdfFileName = exportFilePath +"/" + name+".pdf";
        String pngFileName = exportFilePath +"/" + name+".png";
        //创建image
        Image png = Image.getInstance(pngFileName);
        float heigth = png.getHeight();
        float width = png.getWidth();
        //根据image大小等比例缩放a4纸宽度
        int percent = this.getPercent(width,PageSize.A4.getWidth());
        //建立Document对象的实例。(A4纸,左右上下边距)
        RectangleReadOnly pageSize = new RectangleReadOnly(PageSize.A4.getWidth(), heigth * percent / 100+100);
        Document document = new Document(pageSize, 10, 10, 20, 20);
        try {
            PdfWriter.getInstance(document, new FileOutputStream(pdfFileName));
            //添加文档标题
            document.addTitle("标题");
            //打开文档
            document.open();
            document.newPage();
            png.scalePercent(percent);
            //图片居中显示
            png.setAlignment(Image.MIDDLE);
            png.setAlignment(Image.TEXTWRAP);
            png.setAlignment(Image.MIDDLE);
            //图片加入文档
            document.add(png);
            document.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        //删除png图片文件
        File file = new File(pngFileName);
        if(file.exists()) {
            file.delete();
        }
    }

    //统一按照宽度压缩 这样来的效果是，所有图片的宽度是相等的
    private int getPercent(float w,float a4) {
        int p = 0;
        float p2 = 0.0f;
        p2 = a4 / w * 100;
        p = Math.round(p2);
        return p;
    }
}
