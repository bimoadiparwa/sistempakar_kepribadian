      <!-- page content -->
      <div class="right_col" role="main">
      	<div class="">
      		<div class="page-title">
      			<div class="title_left">
      				<h3>Halaman Kepribadian</h3>
      			</div>
      		</div>
      		<div class="clearfix"></div>
      		<div class="row">
      			<div class="col-md-12 col-sm-12 col-xs-12">
      				<div class="x_panel">
      					<div class="x_title">
      						<h2>Ubah Data Kepribadian</h2>
      						<div class="clearfix"></div>
      					</div>
      					<div class="x_content">
      						<!-- Modal Edit -->
      						<?php foreach ($tbl_kepribadian as $kp) : ?>
      						<div class="modal fade ubahKepribadian<?= $kp['id_kepribadian']; ?>" tabindex="-1"
      							role="dialog" aria-labelledby="forModalLabel" aria-hidden="true">
      							<div class="modal-dialog" role="document">
      								<div class="modal-content">
      									<div class="modal-header">
      										<button type="button" class="close" data-dismiss="modal"
      											aria-label="Close">
      											<span aria-hidden="true">&times;</span>
      										</button>
      										<h5 class="modal-title" id="apasih">Ubah Kepribadian</h5>
      									</div>

      									<?= form_open_multipart('kepribadian/ubahkepribadian'); ?>
      									<input type="hidden" name="id" value="<?= $kp['id_kepribadian']; ?>">
      									<div class="modal-body">
      										<div class="form-group">
      											<label for="kode">Kode Kepribadian</label>
      											<input type="text" class="form-control" id="kode" name="kode"
      												value="<?= $kp['kode_kepribadian']; ?>" readonly>
      										</div>
      										<div class="form-group">
      											<label for="nama">Nama Kepribadian</label>
      											<input type="text" class="form-control" id="nama" name="nama"
      												value="<?= $kp['nama_kepribadian']; ?>">
      										</div>
      										<div class="form-group">
      											<label for="probabilitas">Nilai Probabilitas</label>
      											<input type="text" class="form-control" id="probabilitas"
      												name="probabilitas" value="<?= $kp['probabilitas']; ?>">
      										</div>
      										<div class="form-group">
      											<label for="gambar">Gambar</label>
      											<img style="margin-bottom: 10px; width: 100px;"
      												src=" <?= base_url('assets/images/kepribadian/') . $kp['gambar']; ?>">
      											<input type="file" class="form-control" id="gambar" name="gambar"
      												value="<?= $kp['gambar']; ?>"><?= $kp['gambar']; ?>"
      										</div>
      										<div class="form-group">
      											<label for="Deskripsi">Deskripsi</label>
      											<textarea class="form-control" name="deskripsi1"></textarea>
      											<script>
      												CKEDITOR.replace('deskripsi1');
      											</script>
      										</div>
      									</div>
      									<div>
      										<button type="button" class="btn btn-round btn-secondary"
      											data-dismiss="modal">Batal</button>
      										<button type="submit" class="btn btn-round btn-primary">Simpan</button>
      									</div>
      									</form>
      								</div>
      							</div>
      						</div>
      						<?php endforeach; ?>

      					</div>
      				</div>
      			</div>
      		</div>


      	</div>
      </div>
      <!-- /page content -->
