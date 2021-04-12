<?php
class si_widget_info extends WP_Widget {
    public function __construct()
    {
        parent::__construct('si_widget_info', 'SportIsland - Текстовый виджет', 
        [
            'name' => 'SportIsland - ИНФО КАРТ',
            'description' => 'Выводит все для карт'
        ]);
    }

    // переопределяем функции из родительского класса
    public function form($instance)
    {
        $vars = [
            'position' => 'Адресс',
            'time' => 'Время',
            'phone' => 'Телефон',
            'email' => 'Email'
        ]
        ?>
        <p>
            <label for="<?php echo $this->get_field_id('si_text') ?>">
                Текст:
            </label>
            <input type="text" name='<?php echo $this->get_field_name('si_text') ?>' 
            value="<?php echo get_date_template() ?> 
                <?php echo $instance['si_text']?>" id='<?php echo $this->get_field_id('si_text') ?>'>
        </p>
        
        
        
        <p>
            <label for="<?php echo $this->get_field_id('si_var') ?>">
                Выберите вариант отображения:
            </label>
        
            <select name='<?php echo $this->get_field_name('si_var') ?>'
                id='<?php echo $this->get_field_id('si_var') ?>'>
                <!-- выбор иконок через цикл -->
                <?php foreach($vars as $slug => $var_el): ?>
                <option value="<?=$slug ?>">
                <?php selected($instance['si_var'], $slug, true) ?>
                    <?=$var_el ?>
                </option>
        
                <?php endforeach; ?>
                <!-- закончен цикл -->
            </select>
        </p>
        <?php 
    }
    // работает при сборе страницы для пользователей
    public function widget($args, $instance)
    {
        switch($instance['si_var']) {
            case 'position': 
                ?>
                <span class="widget-address"><?php echo $instance['si_text'] ?> </span>
                
                 <?php
                break;
            case 'time': 
                ?>
                <span class="widget-working-time"> <?php echo $instance['si_text'] ?> </span>
                
                 <?php
                break;
            case 'phone': 
                ?>
                  <a href="tel:88007003030" class="widget-phone"> <?php echo $instance['si_text'] ?> </a>
                
                 <?php
                break;
            case 'email': 
                ?>
                 <a href="mailto:sportisland@gmail.ru" class="widget-email"><?php echo $instance['si_text'] ?></a>
                
                 <?php
                break;
            default: echo '';
            break;
        }
        
    }
    // обновляет виджет
    public function update($new_instance, $old_instance)
    {
        return $new_instance;
    }
}