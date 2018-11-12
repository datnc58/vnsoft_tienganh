<form class="box_search validate" id="guidi" action="<?= base_url('tim-kiem')?>">
    <div class="input-group">
        <div class="input-group-btn search-panel">
            <button type="button" class="btn  dropdown-toggle drop_search" data-toggle="dropdown">
                <span id="search_concept"><?= lang('all')?></span>
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" role="menu">
                <?php foreach ($cate_all as $cate): ?>
                    <li>
                        <a href="<?= base_url($cate->alias)?>" onclick="danhmuc(<?= $cate->id?>)" ><?= $cate->name?></a>
                    </li>
                <?php endforeach; ?>
            </ul>
            <script>
                function danhmuc(sel){
                    $('#id_giatri2').val(sel) ;
                }
            </script>
            <input type="hidden" id="id_giatri2" name="id_cate_search" value="">
        </div>
        <input type="hidden" id="id_giatri2" name="id_cate_search" value="">
        <input type="text" class="form-control input_search validate[required]" id="key" name="key" placeholder="<?= lang('search')?>">
        <span class="input-group-btn">
            <button class="btn butt_search" id="sub" type="button"><?= lang('search')?></button>
        </span>
    </div>
</form>
<script type="text/javascript">
    $('#sub').click(function{
        var key = $('#key');
        if (key != ''){
            $('#guidi').submit();
        }

    })
</script>