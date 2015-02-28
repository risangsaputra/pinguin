<div class="row pinguin">
  
    <!-- Grid bagian kiri | Kontainer utama -->
    
  <div class="left-container">

    <div class="left-modul info-modul">
      <h4 class="title"><?php echo $post_title; ?></h4>
      <span class="date"><i class="glyphicon glyphicon-time"></i> &nbsp;<?php echo $post_date; ?> &nbsp; &bull; &nbsp;</span>
      <span class="comment"><i class="glyphicon glyphicon-comment"></i> <?php echo $comment_count; ?> &nbsp;&bull;</span>
      <span class="comment"> &nbsp;Posted by <?php echo $user_login; ?></span>
      <br><hr>
      <p class="wtsay"><?php echo $parsedown->text($post_content); ?></p>
    </div>
    
  <form role="form" action="<?php echo site_url('comments/post/'.$id)?>">
    <div class="form-group">
      <label for="comment">Comment:</label>
      <textarea class="form-control" rows="5" id="comment"></textarea>
      <input type="submit" class="button-slide">
    </div>
  </form>


  <?php foreach ($comments as $komentar) { ?>
    <div class="left-modul info-modul">
      <h4 class="title"><?php echo $komentar->comment_author; ?></h4>
      <span class="date"><i class="glyphicon glyphicon-time"></i> &nbsp;<?php echo $komentar->comment_date; ?></span>
      <hr>
      <p class="wtsay"><?php echo $komentar->comment_content; ?></p>
    </div>
  <?php } ?>


  </div>    
    
<!-- Grid bagian kanan | Kontainer utama -->