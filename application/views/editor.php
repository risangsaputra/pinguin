
<script>
  

$(function() {
var offset = $("#scroll").offset();
var topPadding = 15;
$(window).scroll(function() {
if ($("#scroll").height() < $(window).height() && $(window).scrollTop() > offset.top) { 
$("#scroll").stop().animate({
marginTop: $(window).scrollTop() - offset.top + topPadding
});
} else {
$("#scroll").stop().animate({
marginTop: 0
});
};
});
});
</script>


<div class="row pinguin">
  
    <!-- Grid bagian kiri | Kontainer utama -->
    
  <div class="left-container">
    <div class="left-modul thread-modul">
      <h4 class="title">Title</h4>
      <span class="date"><i class="glyphicon glyphicon-time"></i> &nbsp;28 Februari, 2014 &nbsp; &bull; &nbsp;</span>
      <span class="comment"><i class="glyphicon glyphicon-comment"></i> 0 &nbsp;&bull;</span>
      <span class="comment"> &nbsp;Posted by <?php echo $this->session->userdata('username');?></span>
      <br><hr>
      <p class="wtsay diparse"></p>
    </div>
</div>

    <!-- Grid bagian kiri | Kontainer utama -->
    
  <div class="right-container">       
      <form action="<?php echo site_url('admin/post_blog') ?>" method="POST" >
        <input type="text" name="title" id="nulis-title" placeholder="Title" >
        
        <select name="kategory" class="form-control height-select">
            <option>Category</option>
            <option>Unit Kedaerahan</option>
            <option>Ukm Bola</option>
        </select> 
        <div id="scroll">
        <textarea name="isi" class="nulis form-control" rows="20"  placeholder="write the text"></textarea>
        <input type="submit" value="Post!" class="btn btn-primary nulis-button">  
        </div>
      </form>
    
  </div>
  

