<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<h1>
    Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<input type='button' value='DB연결' id='jdbcBtn'/>
<script>
$(function(){
    $('#jdbcBtn').on('click',function(){
        location.href='${HOME}/dbConnect.do';
    });
    
});

</script>