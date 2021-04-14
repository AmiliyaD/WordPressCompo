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
   
});


add_action('wp_enqueue_scripts', 'si_jsCss');

add_action('widgets_init', 'si_register');

// РЕГИСТРАЦИЯ СВОИХ ТИПОВ ЗАПИСЕЙ
add_action('init', 'si_register_types');
function si_register_types() {
    // услуги
    register_post_type('services', [
     
            'labels' => [
                'name'               => 'Услуги', // основное название для типа записи
                'singular_name'      => 'Услуга', // название для одной записи этого типа
                'add_new'            => 'Добавить новую услугу', // для добавления новой записи
                'add_new_item'       => 'Добавить новую услугу', // заголовка у вновь создаваемой записи в админ-панели.
                'edit_item'          => 'Редактировать услугу', // для редактирования типа записи
                'new_item'           => 'Новая услуга', // текст новой записи
                'view_item'          => 'Смотреть услуги', // для просмотра записи этого типа.
                'search_items'       => 'Искать услуги', // для поиска по этим типам записи
                'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
                'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
                'parent_item_colon'  => '', // для родителей (у древовидных типов)
                'menu_name'          => 'Услуги', // название меню
            ],
            'public'              => true,
            'menu_position'       => 20,
            'menu_icon'           => 'dashicons-smiley', 
            'hierarchical'        => false,
            'supports'            => ['title', 'editor', 'thu'],
            'has_archive' => true
    ]);
    // тренеры
    register_post_type('trainers', [
     
        'labels' => [
            'name'               => 'Тренеры', // основное название для типа записи
            'singular_name'      => 'Тренер', // название для одной записи этого типа
            'add_new'            => 'Добавить нового тренера', // для добавления новой записи
            'add_new_item'       => 'Добавить нового тренера', // заголовка у вновь создаваемой записи в админ-панели.
            'edit_item'          => 'Редактировать тренера', // для редактирования типа записи
            'new_item'           => 'Новая тренер', // текст новой записи
            'view_item'          => 'Смотреть тренеры', // для просмотра записи этого типа.
            'search_items'       => 'Искать тренеры', // для поиска по этим типам записи
            'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
            'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
            'parent_item_colon'  => '', // для родителей (у древовидных типов)
            'menu_name'          => 'Тренеры', // название меню
        ],
        'public'              => true,
        'menu_position'       => 20,
        'menu_icon'           => 'dashicons-universal-access', 
        'hierarchical'        => false,
        'supports'            => ['title', 'editor', 'thumbnails'],
        'has_archive' => true
]);
    // расписание
register_post_type('schedule', [
     
    'labels' => [
        'name'               => 'Расписание', // основное название для типа записи
        'singular_name'      => 'Расписание', // название для одной записи этого типа
        'add_new'            => 'Добавить новое расписание ', // для добавления новой записи
        'add_new_item'       => 'Добавить новое расписание ', // заголовка у вновь создаваемой записи в админ-панели.
        'edit_item'          => 'Редактировать расписание', // для редактирования типа записи
        'new_item'           => 'Новое расписание', // текст новой записи
        'view_item'          => 'Смотреть расписание', // для просмотра записи этого типа.
        'search_items'       => 'Искать расписание', // для поиска по этим типам записи
        'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
        'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
        'parent_item_colon'  => '', // для родителей (у древовидных типов)
        'menu_name'          => 'Расписание', // название меню
    ],
    'public'              => true,
    'menu_position'       => 20,
    'menu_icon'           => 'dashicons-media-spreadsheet', 
    'hierarchical'        => false,
    'supports'            => ['title', 'editor', 'thumbnails'],
    'has_archive' => true
]);

    // цены
    register_post_type('prices', [
     
        'labels' => [
            'name'               => 'Цена', // основное название для типа записи
            'singular_name'      => 'Цены', // название для одной записи этого типа
            'add_new'            => 'Добавить новые цены ', // для добавления новой записи
            'add_new_item'       => 'Добавить новые цены ', // заголовка у вновь создаваемой записи в админ-панели.
            'edit_item'          => 'Редактировать цены', // для редактирования типа записи
            'new_item'           => 'Новая цена', // текст новой записи
            'view_item'          => 'Смотреть Цена', // для просмотра записи этого типа.
            'search_items'       => 'Искать Цена', // для поиска по этим типам записи
            'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
            'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
            'parent_item_colon'  => '', // для родителей (у древовидных типов)
            'menu_name'          => 'Цена', // название меню
        ],
        'public'              => true,
        'menu_position'       => 20,
        'menu_icon'           => 'dashicons-cart', 
        'hierarchical'        => false,
        'supports'            => ['title', 'editor', 'thumbnails'],
        'has_archive' => true
    ]);

    // карты
    register_post_type('cards', [
     
        'labels' => [
            'name'               => 'Карты', // основное название для типа записи
            'singular_name'      => 'Карты', // название для одной записи этого типа
            'add_new'            => 'Добавить новые карты ', // для добавления новой записи
            'add_new_item'       => 'Добавить новые карты ', // заголовка у вновь создаваемой записи в админ-панели.
            'edit_item'          => 'Редактировать карты', // для редактирования типа записи
            'new_item'           => 'Новая карты', // текст новой записи
            'view_item'          => 'Смотреть карты', // для просмотра записи этого типа.
            'search_items'       => 'Искать карты', // для поиска по этим типам записи
            'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
            'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
            'parent_item_colon'  => '', // для родителей (у древовидных типов)
            'menu_name'          => 'Клубные карты', // название меню
        ],
        'public'              => true,
        'menu_position'       => 20,
        'menu_icon'           => 'dashicons-tag', 
        'hierarchical'        => false,
        'supports'            => ['title', 'editor', 'thumbnails'],
        'has_archive' => false
    ]);
}

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