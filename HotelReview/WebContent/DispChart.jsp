<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@ page  import="java.awt.*" %>
<%@ page  import="java.io.*" %>
<%@ page  import="org.jfree.chart.*" %>
<%@ page  import="org.jfree.chart.axis.*" %>
<%@ page  import="org.jfree.chart.entity.*" %>
<%@ page  import="org.jfree.chart.labels.*" %>
<%@ page  import="org.jfree.chart.plot.*" %>
<%@ page  import="org.jfree.chart.renderer.category.*" %>
<%@ page  import="org.jfree.chart.urls.*" %>
<%@ page  import="org.jfree.data.category.*" %>
<%@ page  import="org.jfree.data.general.*" %>

<%

int pos =  (Integer)session.getAttribute("pos"); 
int neg =  (Integer)session.getAttribute("neg"); 


  final double[][] data = new double[][]{
 {pos},
 {neg},
  };

 final CategoryDataset dataset = 
   DatasetUtilities.createCategoryDataset(" Word ", "", data);
	// DatasetUtilities.createCategoryDataset("Positive Word ", "Negetive Word", data);


 
 JFreeChart chart = null;
 BarRenderer renderer3D = null;
 CategoryPlot plot = null;


 final CategoryAxis3D categoryAxis = new CategoryAxis3D("Words");
 final ValueAxis valueAxis = new NumberAxis3D("Word Count");
 renderer3D = new BarRenderer3D();

 plot = new CategoryPlot(dataset, categoryAxis, valueAxis, renderer3D);
 plot.setOrientation(PlotOrientation.VERTICAL);
 chart = new JFreeChart("Score Bord", JFreeChart.DEFAULT_TITLE_FONT, 
  plot, true);

 chart.setBackgroundPaint(new Color(249, 231, 236));

  try {
 final ChartRenderingInfo info = new ChartRenderingInfo
 (new StandardEntityCollection());

 final File file1 = new File("D:\\Javed\\GauravWorkspace\\HotelReview\\WebContent\\images\\3dbarchart.jpg");
 ChartUtilities.saveChartAsPNG(file1, chart, 600, 400, info);
 //String imgno = (String)session.getAttribute("IMGNO");
 //final File file2 = new File("C:\\Users\\Sunsoft\\workspace\\NLP\\WebContent\\AspectImages\\"+imgno+".png");
 //ChartUtilities.saveChartAsPNG(file2, chart, 600, 400, info);
 
  } catch (Exception e) {
 out.println(e);
 }
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />


</head>
<body onload="document.location.href='DisplayStemmedData.jsp'">
</body>
</html>
