<?php
#****************************************#
# * @Author: Tran Manh                   #
# * @Email: dangtranmanh051187@gmail.com #
# * @Website: http://qts.com             #
# * @Copyright: 2017 - 2018              #
#****************************************#
?>
<section class="content-header">
    <h1>
       Danh sách lựa chọn
        <small></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?= base_url('vnsadmin')?>"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
        <li class="active"><a href="<?= base_url('vnsadmin/attribute/listBrand')?>">Danh sách lựa chọn thuộc tính</a></li>
        <li > <a onclick="history.back()" style="cursor: pointer"><i class="fa fa-reply"></i></a></li>
    </ol>
</section>
<section class="content">
    <!-- Page Heading -->
    <div class="box">
        <div class="box-header">
            <a href="<?= base_url('vnsadmin/product_selection/Add')?>" class="btn btn-success btn-sm">
            <i class="fa fa-plus"></i> Thêm mới
            </a>
            <a onclick="ActionDelete('formbk')" class="btn btn-danger btn-sm">
            <i class="fa fa-times"></i> Xóa
            </a>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
			<form name="formbk" method="post" action="<?=base_url('vnsadmin/product_selection/deletes_selection')?>">
                <table id="example" class="table table-bordered table-striped">
					<thead>
                        <tr>
                            <th width="1%" class="no-sort"><input type="checkbox" name="checkall" id="checkall" value="0" onclick="DoCheck(this.checked,'formbk',0)" /></th>
							<th width="10%">Kiểu</th>
							<th width="10%" class="no-sort">Tên</th>
							<th width="10%" class="no-sort">Giá khởi điểm</th>
							<th width="10%" class="no-sort">Giá kết thúc</th>
							<th width="10%" class="no-sort">Kích thước</th>
							<th width="10%" class="no-sort">Màu sắc</th>
                            <th width="10%" class="no-sort text-center">Action</th>
							
                        </tr>
                    </thead>
					 <tbody>
					 <?php if (isset($list)) {
						$stt = 1;
						foreach ($list as $v) {
							?>
						<tr>
							<td><input type="checkbox" name="checkone[]" id="checkone" value="<?php echo $v->id; ?>" ></td>
							<td><?= @$v->type ?></td>
							<td><?= @$v->title ?></td>
							<td><?= number_format($v->price_to) ?></td>
							<td><?= number_format($v->price_from) ?></td>
                            <td><?= @$v->size ?></td>
                            <td><span style="width: 30px; height: 30px; background: #<?=@$v->color ?>"></span></td>
							<td class="text-center">
								<a class="btn btn-xs btn-default"
								   href="<?= base_url('vnsadmin/product_selection/edit/' . $v->id) ?>"><i
										class="fa fa-pencil"></i> </a>
								<a class="btn btn-xs btn-danger"
								   href="<?= base_url('vnsadmin/product_selection/delete/' . $v->id) ?>" title="Xóa"
								   onclick="return confirm('Bạn có chắc chắn muốn xóa?')"><i
										class="fa fa-times"></i> </a>
							</td>
						</tr>
						<?php
						} } ?>
					 </tbody>
				</table>
			</form>	      
		</div>
	</div>
</section>
<style>
    .view_color{width: 10px; height: 10px;margin-top: 5px;cursor: pointer; float: left;margin-right: 5px }
</style>
<script>
	$(document).ready(function() {
		$('#example').DataTable( {
			"columnDefs": [ {
					"targets": 'no-sort',
					"orderable": false,
					  } ],
			//"order": [[ 2, "desc" ]],
			"initComplete": function () {
				this.api().columns().every( function () {
					var column = this;
					var select = $('<select><option value=""></option></select>')
						.appendTo( $(column.footer()).empty() )
						.on( 'change', function () {
							var val = $.fn.dataTable.util.escapeRegex(
								$(this).val()
							);
	 
							column
								.search( val ? '^'+val+'$' : '', true, false )
								.draw();
						} );
	 
					column.data().unique().sort().each( function ( d, j ) {
						select.append( '<option value="'+d+'">'+d+'</option>' )
					} );
				} );
			}
		} );
	} );
</script>
<!-- DataTables -->
<link rel="stylesheet" href="<?= base_url('assets/css_admin/back_end/plugins/datatables/dataTables.bootstrap.css')?>">
<script src="<?=base_url('assets/js_admin/general_list.js')?>"></script>
<script src="<?= base_url('assets/css_admin/back_end/plugins/datatables/jquery.dataTables.min.js')?>"></script>
<script src="<?= base_url('assets/css_admin/back_end/plugins/datatables/dataTables.bootstrap.min.js')?>"></script>
