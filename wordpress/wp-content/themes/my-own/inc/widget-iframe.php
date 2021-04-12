<?php
class si_widget_iframe extends WP_Widget {
    public function __construct()
    {
        parent::__construct('si_widget_iframe', 'SportIsland - Текстовый виджет', 
        [
            'name' => 'SportIsland - Соц сеть виджет',
            'description' => 'Выводит все для карт'
        ]);
    }

    // переопределяем функции из родительского класса
    public function form($instance)
    {
  ?>
<p>
    <label for="<?php echo $this->get_field_id('si_link') ?>">
        Введите ссылку на соц.сеть
    </label>
    <input type="text" name='<?php echo $this->get_field_name('si_link') ?>' value="<?php echo get_date_template() ?> 
        <?php echo $instance['si_link']?>" id='<?php echo $this->get_field_id('si_link') ?>'>
</p>



<p>
    <label for="<?php echo $this->get_field_id('si_slug') ?>">
        Выберите социальную сеть
    </label>

    <select name='<?php echo $this->get_field_name('si_slug') ?>'
        id='<?php echo $this->get_field_id('si_slug') ?>'>
        <!-- выбор иконок через цикл -->
        <?php foreach($this->socials as $slug => $soc_el): ?>
        <option value="<?=$slug ?>">
        <?php selected($instance['si_slug'], $slug, true) ?>
            <?=$soc_el[0] ?>
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
        echo $instance['si_link'];
    }
    // обновляет виджет
    public function update($new_instance, $old_instance)
    {
        return $new_instance;
    }
}