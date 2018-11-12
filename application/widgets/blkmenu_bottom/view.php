<div class="col-md-3 p0">
    <div class="ft-bd">
        <h5>THÔNG TIN &amp; CHÍNH SÁCH</h5>
        <p>
            <?php foreach ($menu_footer as $menu): ?>
            <a href="<?= base_url($menu->url)?>"><?= $menu->name?></a>
            <?php endforeach; ?>

        </p>
    </div>
</div>

