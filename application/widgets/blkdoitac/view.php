

<article class="arc5">
    <h2 class="heading1">
        <span><?= lang('partner')?></span>
    </h2>
    <div class="mgb20"></div>
    <div class="p300">
        <div class="slider_dt">
            <?php foreach($slides as $slide):?>
                <div class="item"><a href="<?= $slide->url?>"><img src="<?= base_url($slide->link)?>" alt=""/></a></div>
            <?php endforeach;?>
        </div>
    </div>
</article>
