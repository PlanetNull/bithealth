<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	if(session.getAttribute("username") != null){
		
		response.sendRedirect("./dashboard");
		return;
		
	}else{

%>

<% 
	// Tell browser not to cache this page
	
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	response.setHeader("Pragma","no-cache");
	response.setDateHeader("Expires", 0);
%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="icon" href="${pageContext.request.contextPath}/RESOURCES/img/favicon.ico" type="image/x-icon">
    <title>Developers Console</title>
    <link href="${pageContext.request.contextPath}/RESOURCES/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/RESOURCES/css/adminl.css" rel="stylesheet">

    <!-- Google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:700" rel="stylesheet">

  </head>
  <body>
    <div class="_container-fluid">
    <div class="_row-fluid">
        <div class="_centering">
          <div id="loginbox" class="row flex">


              <div class="_panel panel panel-default" >
                  <div class="panel-heading">
                      <div class="panel-title text-center _dev-brand">
                        <span class="glyphicon glyphicon-plus" style="font-size: 12px;position: relative; top: -1px;"></span>Bithealth Developers Console
                      </div>
                  </div>

                  <div class="panel-body">

                      <form name="form" id="form" class="form-horizontal" action="./login" method="POST">

                          <div class="input-group">
                              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                              <input id="user" type="text" class="form-control" name="username" autocomplete="off" value="" placeholder="Username">
                          </div>

                          <div class="input-group">
                              <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                              <input id="password" type="password" class="form-control" name="password" placeholder="Password">
                          </div>

                          <div class="form-group">
                              <!-- Button -->
                              <div class="col-sm-12 controls">
                                  <button type="submit" href="#" name="submit" class="btn btn-primary pull-right"><i class="glyphicon glyphicon-log-in"></i> Log in</button>
                            		
                            <% 
            				if(request.getAttribute("error") != null){
            
            				%>

            				<div class="alert alert-danger" style="padding: 6px;margin-bottom: -10px;text-alighn: left !important;" role="alert"><%= request.getAttribute("error") %></div>
            
            				<% } %>
                              </div>
                          </div>

                      </form>

                  </div>
              </div>
        </div>
    </div>
</div>



<div id="particles"></div>

<script src="${pageContext.request.contextPath}/RESOURCES/js/jquery-3.2.1.min.js"></script>

<script type="text/javascript">
!function(a){function b(b,d){function e(){if(w){$canvas=a('<canvas class="pg-canvas"></canvas>'),v.prepend($canvas),p=$canvas[0],q=p.getContext("2d"),f();for(var b=Math.round(p.width*p.height/d.density),c=0;b>c;c++){var e=new l;e.setStackPos(c),x.push(e)}a(window).on("resize",function(){h()}),a(document).on("mousemove",function(a){y=a.pageX,z=a.pageY}),B&&!A&&window.addEventListener("deviceorientation",function(){D=Math.min(Math.max(-event.beta,-30),30),C=Math.min(Math.max(-event.gamma,-30),30)},!0),g(),o("onInit")}}function f(){p.width=v.width(),p.height=v.height(),q.fillStyle=d.dotColor,q.strokeStyle=d.lineColor,q.lineWidth=d.lineWidth}function g(){if(w){s=a(window).width(),t=a(window).height(),q.clearRect(0,0,p.width,p.height);for(var b=0;b<x.length;b++)x[b].updatePosition();for(var b=0;b<x.length;b++)x[b].draw();E||(r=requestAnimationFrame(g))}}function h(){for(f(),i=x.length-1;i>=0;i--)(x[i].position.x>v.width()||x[i].position.y>v.height())&&x.splice(i,1);var a=Math.round(p.width*p.height/d.density);if(a>x.length)for(;a>x.length;){var b=new l;x.push(b)}else a<x.length&&x.splice(a);for(i=x.length-1;i>=0;i--)x[i].setStackPos(i)}function j(){E=!0}function k(){E=!1,g()}function l(){switch(this.stackPos,this.active=!0,this.layer=Math.ceil(3*Math.random()),this.parallaxOffsetX=0,this.parallaxOffsetY=0,this.position={x:Math.ceil(Math.random()*p.width),y:Math.ceil(Math.random()*p.height)},this.speed={},d.directionX){case"left":this.speed.x=+(-d.maxSpeedX+Math.random()*d.maxSpeedX-d.minSpeedX).toFixed(2);break;case"right":this.speed.x=+(Math.random()*d.maxSpeedX+d.minSpeedX).toFixed(2);break;default:this.speed.x=+(-d.maxSpeedX/2+Math.random()*d.maxSpeedX).toFixed(2),this.speed.x+=this.speed.x>0?d.minSpeedX:-d.minSpeedX}switch(d.directionY){case"up":this.speed.y=+(-d.maxSpeedY+Math.random()*d.maxSpeedY-d.minSpeedY).toFixed(2);break;case"down":this.speed.y=+(Math.random()*d.maxSpeedY+d.minSpeedY).toFixed(2);break;default:this.speed.y=+(-d.maxSpeedY/2+Math.random()*d.maxSpeedY).toFixed(2),this.speed.x+=this.speed.y>0?d.minSpeedY:-d.minSpeedY}}function m(a,b){return b?void(d[a]=b):d[a]}function n(){v.find(".pg-canvas").remove(),o("onDestroy"),v.removeData("plugin_"+c)}function o(a){void 0!==d[a]&&d[a].call(u)}var p,q,r,s,t,u=b,v=a(b),w=!!document.createElement("canvas").getContext,x=[],y=0,z=0,A=!navigator.userAgent.match(/(iPhone|iPod|iPad|Android|BlackBerry|BB10|mobi|tablet|opera mini|nexus 7)/i),B=!!window.DeviceOrientationEvent,C=0,D=0,E=!1;return d=a.extend({},a.fn[c].defaults,d),l.prototype.draw=function(){q.beginPath(),q.arc(this.position.x+this.parallaxOffsetX,this.position.y+this.parallaxOffsetY,d.particleRadius/2,0,2*Math.PI,!0),q.closePath(),q.fill(),q.beginPath();for(var a=x.length-1;a>this.stackPos;a--){var b=x[a],c=this.position.x-b.position.x,e=this.position.y-b.position.y,f=Math.sqrt(c*c+e*e).toFixed(2);f<d.proximity&&(q.moveTo(this.position.x+this.parallaxOffsetX,this.position.y+this.parallaxOffsetY),d.curvedLines?q.quadraticCurveTo(Math.max(b.position.x,b.position.x),Math.min(b.position.y,b.position.y),b.position.x+b.parallaxOffsetX,b.position.y+b.parallaxOffsetY):q.lineTo(b.position.x+b.parallaxOffsetX,b.position.y+b.parallaxOffsetY))}q.stroke(),q.closePath()},l.prototype.updatePosition=function(){if(d.parallax){if(B&&!A){var a=(s-0)/60;pointerX=(C- -30)*a+0;var b=(t-0)/60;pointerY=(D- -30)*b+0}else pointerX=y,pointerY=z;this.parallaxTargX=(pointerX-s/2)/(d.parallaxMultiplier*this.layer),this.parallaxOffsetX+=(this.parallaxTargX-this.parallaxOffsetX)/10,this.parallaxTargY=(pointerY-t/2)/(d.parallaxMultiplier*this.layer),this.parallaxOffsetY+=(this.parallaxTargY-this.parallaxOffsetY)/10}switch(d.directionX){case"left":this.position.x+this.speed.x+this.parallaxOffsetX<0&&(this.position.x=v.width()-this.parallaxOffsetX);break;case"right":this.position.x+this.speed.x+this.parallaxOffsetX>v.width()&&(this.position.x=0-this.parallaxOffsetX);break;default:(this.position.x+this.speed.x+this.parallaxOffsetX>v.width()||this.position.x+this.speed.x+this.parallaxOffsetX<0)&&(this.speed.x=-this.speed.x)}switch(d.directionY){case"up":this.position.y+this.speed.y+this.parallaxOffsetY<0&&(this.position.y=v.height()-this.parallaxOffsetY);break;case"down":this.position.y+this.speed.y+this.parallaxOffsetY>v.height()&&(this.position.y=0-this.parallaxOffsetY);break;default:(this.position.y+this.speed.y+this.parallaxOffsetY>v.height()||this.position.y+this.speed.y+this.parallaxOffsetY<0)&&(this.speed.y=-this.speed.y)}this.position.x+=this.speed.x,this.position.y+=this.speed.y},l.prototype.setStackPos=function(a){this.stackPos=a},e(),{option:m,destroy:n,start:k,pause:j}}var c="particleground";a.fn[c]=function(d){if("string"==typeof arguments[0]){var e,f=arguments[0],g=Array.prototype.slice.call(arguments,1);return this.each(function(){a.data(this,"plugin_"+c)&&"function"==typeof a.data(this,"plugin_"+c)[f]&&(e=a.data(this,"plugin_"+c)[f].apply(this,g))}),void 0!==e?e:this}return"object"!=typeof d&&d?void 0:this.each(function(){a.data(this,"plugin_"+c)||a.data(this,"plugin_"+c,new b(this,d))})},a.fn[c].defaults={minSpeedX:.1,maxSpeedX:.7,minSpeedY:.1,maxSpeedY:.7,directionX:"center",directionY:"center",density:1e4,dotColor:"#666666",lineColor:"#666666",particleRadius:7,lineWidth:1,curvedLines:!1,proximity:100,parallax:!0,parallaxMultiplier:5,onInit:function(){},onDestroy:function(){}}}(jQuery),/**
* requestAnimationFrame polyfill by Erik Möller. fixes from Paul Irish and Tino Zijdel
* @see: http://paulirish.com/2011/requestanimationframe-for-smart-animating/
* @see: http://my.opera.com/emoller/blog/2011/12/20/requestanimationframe-for-smart-er-animating
* @license: MIT license
*/
function(){for(var a=0,b=["ms","moz","webkit","o"],c=0;c<b.length&&!window.requestAnimationFrame;++c)window.requestAnimationFrame=window[b[c]+"RequestAnimationFrame"],window.cancelAnimationFrame=window[b[c]+"CancelAnimationFrame"]||window[b[c]+"CancelRequestAnimationFrame"];window.requestAnimationFrame||(window.requestAnimationFrame=function(b){var c=(new Date).getTime(),d=Math.max(0,16-(c-a)),e=window.setTimeout(function(){b(c+d)},d);return a=c+d,e}),window.cancelAnimationFrame||(window.cancelAnimationFrame=function(a){clearTimeout(a)})}();

$(function(){

  $('#particles').particleground({
      minSpeedX: 0.2,
      maxSpeedX: 0.2,
      minSpeedY: 0.2,
      maxSpeedY: 0.2,
      directionX: 'center', // 'center', 'left' or 'right'. 'center' = dots bounce off edges
      directionY: 'center', // 'center', 'up' or 'down'. 'center' = dots bounce off edges
      density: 4000, // How many particles will be generated: one particle every n pixels
      dotColor: '#E3E3E3',
      lineColor: '#E3E3E3',
      particleRadius: 5, // Dot size
      lineWidth: 0.3,
      curvedLines: true,
      proximity: 130, // How close two dots need to be before they join
      parallax: false
  });

});
</script>
  </body>
</html>

<% } %>
