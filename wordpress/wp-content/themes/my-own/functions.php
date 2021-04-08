<?php
// Служебные функции для сайта


add_action('after_setup_theme', function() {
    add_theme_support('custom-logo');
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');
});
add_action('wp_enqueue_scripts', 'si_jsCss');



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