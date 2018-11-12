<?php
    if(isset($header) && !empty($header)){
        $stt = 1;
        foreach($header as $val){ ?>
            <tr>
                <td align="center"><?=$stt;?></td>
                <td align="center" onclick="enter_header(<?=$val->id;?>)">
                    <img src="<?=base_url($val->url."image.png")?>" style="width: 100%; cursor: pointer" alt=""/>
                </td>
            </tr>
<?php  $stt++; }
    }
?>
