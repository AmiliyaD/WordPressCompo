<?php
// Служебные функции для сайта
$widget = [
    'wp-widget-text.php',
    'widget-contact.php',
    'widget-social.php',
    'widget-iframe.php',
    'widget-info.php'
];

// REQUIRE functionS
foreach($widget as $w) {
    require_once(__DIR__ . '/inc/' . $w);
}






add_action('after_setup_theme', function() {
    register_nav_menu('menu-header', 'Меню в шапке');
    register_nav_menu('menu-footer', 'Меню в подвале');

    
    add_theme_support('custom-logo');
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');
    // add_theme_support('menus');
});
add_action('wp_enqueue_scripts', 'si_jsCss');

add_action('widgets_init', 'si_register');


// 3 фунция - функция для сайтбара
function si_register()
{
    register_sidebar([
        'name'=>'Сайтбар в шапке сайта',
        'id'=> 'si_header',
        'before_widger' => null,
        'after_widget' => null
    ]);
    register_sidebar([
        'name'=>'Инфа под картой ',
        'id'=> 'si-cart2',
        'before_widger' => null,
        'after_widget' => null
    ]);

    register_sidebar([
        'name'=>'Сайтбар в подвале сайта',
        'id'=> 'si_footer',
        'before_widger' => null,
        'after_widget' => null
    ]);

    // колонки подвала
    register_sidebar([
        'name'=>'Сайтбар в подвале сайта - колонка 1 ',
        'id'=> 'si-col1',
        'before_widger' => null,
        'after_widget' => null
    ]);
    register_sidebar([
        'name'=>'Сайтбар в подвале сайта - колонка 2 ',
        'id'=> 'si-col2',
        'before_widger' => null,
        'after_widget' => null
    ]);
    register_sidebar([
        'name'=>'Сайтбар в подвале сайта - колонка 3 ',
        'id'=> 'si-col3',
        'before_widger' => null,
        'after_widget' => null
    ]);

    // сайтбары под картой
    register_sidebar([
        'name'=>'Карта ',
        'id'=> 'si-cart',
        'before_widger' => null,
        'after_widget' => null
    ]);
 
    register_sidebar([
        'name'=>'Под картой ',
        'id'=> 'si-underCart',
        'before_widger' => null,
        'after_widget' => null
    ]);

    register_widget('si_widget_text');
    register_widget('si_widget_contact');
    register_widget('si_widget_social');
    register_widget('si_widget_iframe');
    register_widget('si_widget_info');
}




// 2 фунция для подключения стилей и скриптов
function si_jsCss() {
    // для скриптов
    wp_enqueue_script(
        'js', get_template_directory_uri() . "/assets/js/js.js",
        [],
        '1.1',
        true

    );
    // для стилей
    wp_enqueue_style(
        'si_style',
        get_template_directory_uri() . "/assets/css/styles.css",
        [],
        '1.1',
        'all'
    );
}


// 1 функция - для удобного вывода картинок
function _si_img_path($path)
{
    return get_template_directory_uri() . "/assets/" . $path;
}
?>