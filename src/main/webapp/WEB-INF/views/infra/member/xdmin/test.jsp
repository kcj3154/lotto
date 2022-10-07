<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>

<!doctype html>
<html lang="ko">
<head>
	  <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>MEMBER</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/resources/user/main/image/favicon.ico" />
        
        <!--  css  -->
    	<style type="text/css">
    	
    	
    	#btnDelete {
    		float: left;
    	}
    	
    	#btnList, #btnSave {
    		float: right;
    	}
    	
    	.addScroll{
			overflow-y:auto;
			height: 200px;
			background-color:#E9ECEF;
			padding-top:5px; 
			padding-left:5px;
		}
 	
		.input-file-button{
			padding: 4px 25px;
			background-color:#fed400;
			border-radius: 4px;
			color: white;
			cursor: pointer;
		}
    	
    </style>
    	
    	
       
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
        
</head>
<body>




<form>
<div class="row mt-sm-4">
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmUploadedImage" class="form-label input-file-button">이미지첨부</label>
 			<input class="form-control form-control-sm" id="ifmmUploadedImage" name="ifmmUploadedImage" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedImage', 1, 0, 1, 0, 0, 1);">
			<div class="addScroll">
				<ul id="ulFile1" class="list-group">
				</ul>
			</div>
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">
			<label for="ifmmUploadedFile" class="form-label input-file-button">파일첨부</label>
			<input class="form-control form-control-sm" id="ifmmUploadedFile" name="ifmmUploadedFile" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedFile', 2, 0, 2, 0, 0, 2);" >
			<div class="addScroll">
				<ul id="ulFile2" class="list-group">
				</ul>
			</div>
        </div>
    </div>

    <div class="row mt-sm-4">
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmUploadedImage" class="form-label input-file-button">이미지첨부</label>
 			<input class="form-control form-control-sm" id="ifmmUploadedImage" name="ifmmUploadedImage" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedImage', 1, 0, 1, 0, 0, 1);">
 			<div class="addScroll">
				<div style="display: inline-block; height: 95px;">
					<img src="/resources/common/image/default_111.jpg" class="rounded" width= "85px" height="85px">
					<div style="position: relative; top:-85px; left:5px"><span style="color: red;">X</span></div>
				</div>
 			</div>
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">
			<label for="ifmmUploadedFile" class="form-label input-file-button">파일첨부</label>
			<input class="form-control form-control-sm" id="ifmmUploadedFile" name="ifmmUploadedFile" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedFile', 2, 0, 2, 0, 0, 2);" >
			<div class="addScroll">
				<ul id="ulFile2" class="list-group">
				</ul>
			</div>
        </div>
    </div>    
	<div class="row">
		<div class="col-4">
			<label for="#" class="form-label"><span class="text-danger">*</span>파일첨부</label>
			<input type="file" name="img" id="img" class="form-control" multiple="multiple">
			<input type="file" name="img2" id="img2" class="form-control">
		</div>
	</div>
	
	<button type="button" class="btn btn-dark btn-sm" id="btnSave">ㅎ</button>
</div>
</form>

<script>
	$("#btnSave").on("click", function(){
	   		
		if (seq.val() == "0" || seq.val() == ""){
	   		// insert
/* if (validationInst() == false) return false;
	   		
 */	   		
//	 		<input type="file" name="img" id="img">
 
//	 		var obj = $("input[name=img]")[0].files;
//	 		var obj2 = $("input[name=img2]")[0].files;
			
			var obj = document.getElementById("img").files; 
			var obj2 = document.querySelector("#img2").files;
			
			alert(obj);
			alert(obj.length);
//	 		alert(obj.name);
			
			for(var i=0; i<obj.length; i++){
				alert(obj[i].name + " : " + obj[i].size);	
			}
			
			alert(obj2);
			alert(obj2.length);
			
			for(var i=0; i<obj2.length; i++){
				alert(obj2[i].name + " + " + obj2[i].size);
			}
		
	   		return false;
 
 		form.attr("action", goUrlInst).submit();
	   	} else {
	   		// update
	   		/* keyName.val(atob(keyName.val())); */
	   		
// 	   		if (validationUpdt() == false) return false;
	   		
	   		form.attr("action", goUrlUpdt).submit();
	   	}
	}); 
	
</script>

</body>
</html>