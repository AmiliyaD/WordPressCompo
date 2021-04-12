<?php
class si_widget_contact extends WP_Widget {
    public function __construct()
    {
        parent::__construct('si_widget_contact', 'SportIsland - Текстовый виджет', 
        [
            'name' => 'SportIsland - Контактовый виджет',
            'description' => 'Выводит контакты и адресс'
        ]);
    }

    // переопределяем функции из родительского класса
    public function form($instance)
    {
 ?>
        <p>
        <label for="<?php echo $this->get_field_id('si_contact') ?>">Введите контакты</label>
        <input type="text" name='<?php echo $this->get_field_name('si_contact') ?>' value="<?php echo get_date_template() ?> <?php echo $instance['si_contact']?>" id='<?php echo $this->get_field_id('si_contact') ?>'>
        </p>

        <p>
        <label for="<?php echo $this->get_field_id('si_address') ?>">Введите адресс</label>
        <input type="text" name='<?php echo $this->get_field_name('si_address') ?>' value="<?php echo get_date_template() ?> <?php echo $instance['si_address']?>" id='<?php echo $this->get_field_id('si_address') ?>'>
        </p>
 <?php    
    }
    // работает при сборе страницы для пользователей
    public function widget($args, $instance)
    {
        $tel_text = $instance['phone'];
        $pattern = '/[^+0-9]/';
        $tel = preg_replace($pattern, '', $tel_text);
        ?>
        <address class="main-header__widget widget-contacts">
            <a href="tel:<?php echo $tel; ?>" class="widget-contacts__phone"> <?php echo $instance['si_contact'] ?> </a>
            <p class="widget-contacts__address"> <?php echo $instance['si_address'] ?> </p>
          </address>
        <?php
    }
    // обновляет виджет
    public function update($new_instance, $old_instance)
    {
        return $new_instance;
    }
}