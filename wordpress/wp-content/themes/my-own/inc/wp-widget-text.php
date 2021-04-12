<?php
class si_widget_text extends WP_Widget {
    public function __construct()
    {
        parent::__construct('si_widget_text', 'SportIsland - Текстовый виджет', 
        [
            'name' => 'SportIsland - Текстовый виджет',
            'description' => 'Выводит простой текст'
        ]);
    }

    // переопределяем функции из родительского класса
    public function form($instance)
    {
 ?>
        <p>
        <label for="<?php echo $this->get_field_id('si_text') ?>"></label>
        <input type="text" name='<?php echo $this->get_field_name('si_text') ?>' value="<?php echo get_date_template() ?> <?php echo $instance['si_text']?>" id='<?php echo $this->get_field_id('si_text') ?>'>
        </p>
 <?php    
    }
    // работает при сборе страницы для пользователей
    public function widget($args, $instance)
    {
        echo $instance['si_text'];
    }
    // обновляет виджет
    public function update($new_instance, $old_instance)
    {
        return $new_instance;
    }
}