<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

		<!-- footer -->

		<div class="footer">
			<p>Â© 2018 MCK . All Rights Reserved . Design by <a href="#">Kirlangic</a></p>
		</div>
		<!-- //footer -->
	</section>
	<script src="/resources/js/bootstrap.js"></script>
	
	
<!-- Zengin metin editoru yapilmasi gereken textarea id sine editor atamak. id="editor" -->
	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
  <script>tinymce.init({ selector:'#editor',
     external_plugins: {
     },
     height: 200,
     themes: "modern",
     plugins: [
        'advlist autolink lists link image charmap print preview anchor',
        'searchreplace visualblocks code fullscreen',
        'insertdatetime media table contextmenu paste code textcolor colorpicker '
      ],
      toolbar: 'undo redo | insert | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | forecolor backcolor | code',
   });</script>
   