<?php get_header();
$title = single_cat_title('', false);

?>

<main class="main-content">
      <h1 class="sr-only"> Страница категории <?php echo $title ?> в блоге сайта спортклуба SportIsland </h1>
      <div class="wrapper">
      <?php get_template_part('tmp/breadcrumps') ?>
      </div>
     
      <section class="category-posts">
        <div class="wrapper">
          <h2 class="main-heading category-posts__h"> <?php echo $title ?> </h2>
          <?php if(have_posts()): ?>
          <ul class="posts-list">
          <?php while(have_posts()):
            the_post();
            ?>
            <li class="last-post">
              <a href="<?php the_permalink() ?>" class="last-post__link" aria-label="Читать текст статьи: <?php the_title() ?>">
                <figure class="last-post__thumb">
                <?php the_post_thumbnail('full', ['class'=> 'last-post__img']) ?>
                </figure>
                <div class="last-post__wrap">
                  <h3 class="last-post__h"> <?php the_title(); ?></h3>
                  <p class="last-post__text"> <?php echo get_the_excerpt() ?> </p>
                  <span class="last-post__more link-more">Подробнее</span>
                </div>
              </a>
            </li>
            <?php endwhile; ?>
            <!-- <li class="last-post">
              <a href="" class="last-post__link" aria-label="Читать текст статьи: Бег помогает похудеть">
                <figure class="last-post__thumb">
                  <img src="./img/blog__article_thmb2.jpg" alt="" class="last-post__img">
                </figure>
                <div class="last-post__wrap">
                  <h3 class="last-post__h"> Бег помогает похудеть </h3>
                  <p class="last-post__text"> Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. </p>
                  <span class="last-post__more link-more">Подробнее</span>
                </div>
              </a>
            </li>
            <li class="last-post">
              <a href="single.html" class="last-post__link" aria-label="Читать текст статьи: Рельефный пресс">
                <figure class="last-post__thumb">
                  <img src="./img/blog__article_thmb3.jpg" alt="" class="last-post__img">
                </figure>
                <div class="last-post__wrap">
                  <h3 class="last-post__h"> Рельефный пресс </h3>
                  <p class="last-post__text"> Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. </p>
                  <span class="last-post__more link-more">Подробнее</span>
                </div>
              </a>
            </li> -->
          </ul>
       <?php the_posts_pagination() ?>
          <nav class="pagination">
            <h3 class="sr-only">Навигация</h3>
            <ul class="pagination__links">
              <li class="pagination__block pagination__block_current">
                <a href="#" class="pagination__link"> 1 </a>
              </li>
              <li class="pagination__block">
                <a href="#" class="pagination__link"> 2 </a>
              </li>
              <li class="pagination__block">
                <a href="#" class="pagination__link"> 3 </a>
              </li>
              <li class="pagination__block">
                <a href="#" class="pagination__link"> 4 </a>
              </li>
              <li class="pagination__block">
                <a href="#" class="pagination__link"> 5 </a>
              </li>
            </ul>
          </nav>
        </div>
        <?php else: 
            get_template_part('tmp/no_posts');
            ?>

          <?php endif; ?>
      </section>
    </main>
<?php get_footer() ?>