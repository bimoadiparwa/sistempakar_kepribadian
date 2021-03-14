	<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Diagnosa extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    $this->load->model('Diagnosa_model', 'DM');
    $this->load->model('Laporan_model', 'ML');
  }

  public function hasil()
  {
    $this->DM->kosongTmpCiri();
    $this->DM->kosongTmpFinal();
    $this->DM->insertTmpCiri();

    $tmpCiri = $this->DM->insertTmpFinal();
    $this->db->insert_batch('tmp_final', $tmpCiri);

		// Proses Perhitungan
		$probK1 = $this->DM->ProbK1();
		if($probK1 != 0.25){
			$probK1 = $probK1;
		} else {
			$probK1 = 0;
		}
    echo 'Nilai Prob K1 =' . $probK1 . '<br>';
		$probK2 = $this->DM->ProbK2();
		if($probK2 != 0.25){
			$probK2 = $probK2;
		} else {
			$probK2 = 0;
		}
    echo 'Nilai Prob K2 =' . $probK2 . '<br>';
		$probK3 = $this->DM->ProbK3();
		if($probK3 != 0.25){
			$probK3 = $probK3;
		} else {
			$probK3 = 0;
		}
    echo 'Nilai Prob K3 =' . $probK3 . '<br>';
		$probK4 = $this->DM->ProbK4();
		if($probK4 != 0.25){
			$probK4 = $probK4;
		} else {
			$probK4 = 0;
		}
    echo 'Nilai Prob K4 =' . $probK4 . '<br>';

    // Testing Hasil Perhitungan Bayes Tiap Kepribadian
    $data = [
      'K1' => $probK1,
      'K2' => $probK2,
      'K3' => $probK3,
      'K4' => $probK4
		];

		$jmlProb = array_sum($data);
    echo 'Jumlah Probabilitas =' . $jmlProb . '<br><br>';

		$K1 = ($probK1 / $jmlProb) . '<br>';
		echo 'Nilai Perhitungan Bayes K1 =' .  $K1 . '<br>';
    $K2 = ($probK2 / $jmlProb) . '<br>';
    echo 'Nilai Perhitungan Bayes K2 =' . $K2 . '<br>';
    $K3 = ($probK3 / $jmlProb) . '<br>';
    echo 'Nilai Perhitungan Bayes K3 =' . $K3 . '<br>';
    $K4 = ($probK4 / $jmlProb) . '<br>';
		echo 'Nilai Perhitungan Bayes K4 =' . $K4 . '<br>';
		
    $this->DM->hasilProbK1($K1);
    $this->DM->hasilProbK2($K2);
    $this->DM->hasilProbK3($K3);
    $this->DM->hasilProbK4($K4);

    //insert hasil dari diagnosa
    $this->DM->insertHasil();
    redirect('member/hasil_diagnosa');
  }
}
