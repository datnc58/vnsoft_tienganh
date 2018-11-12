

    <div class="slider_main">
        <?php foreach($slide_home as $slide):?>
            <div class="item">
                <a href="<?=base_url($slide->url)?>" class="h_5668" title="<?=$slide->title;?>">
                    <img src="<?=base_url(@$slide->image)?>" alt="<?=$slide->title?>"/></a>
            </div>
        <?php endforeach;?>
    </div>