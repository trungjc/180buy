<?php if ($news) { ?>
<div class="box newblog">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <?php foreach ($news as $news_story) { ?>
      <div class="box-news">
       
        <h4><?php echo $news_story['title']; ?></h4>
       <div><em><?php echo $text_date_added; ?> <?php echo $news_story['date_added']; ?></em></div>
        <?php echo $news_story['description']; ?> &hellip; <a href="<?php echo $news_story['href']; ?>"><?php echo $text_read_more; ?></a></p>
       
      </div>
    <?php } ?>
  </div>
</div>
<?php } ?>
