<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

if (isset($_SESSION['login']) && $_SESSION['login'] && isset($_SESSION['level']) && $_SESSION['level'] == 'user') {
    $stmt = $koneksi->prepare("SELECT COUNT(id_transaksi) AS jml_transaksi FROM transaksi WHERE id_user = ? AND status = '4'");
    $stmt->bind_param("s", $_SESSION['id']);
    $stmt->execute();
    $result = $stmt->get_result();
    $check_testi = $result->fetch_assoc();
    $stmt->close();
}

$query_testi = mysqli_query($koneksi, "SELECT testimoni.pesan, user.nama, user.foto FROM testimoni JOIN user ON testimoni.id_user = user.id_user");
?>

<div class="navbar-background"></div>

<section class="section" id="testimoni">
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-12 col-md-offset-1">
                <div class="section-header mar-bot30">
                    <h2 class="section-heading text-center">Testimoni</h2>
                </div>

                <?php if (isset($_SESSION['login']) && $_SESSION['login'] && isset($_SESSION['level']) && $_SESSION['level'] == 'user' && isset($check_testi['jml_transaksi']) && $check_testi['jml_transaksi'] > 0): ?>
                    <div class="panel">
                        <form action="sistem/tambah_testi.php" method="post">
                            <div class="panel-body">
                                <label for="pesan">Berikan Testimoni</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <textarea name="pesan" id="pesan" class="form-control testi-form" placeholder="Masukan Testimoni"></textarea>
                                        <span class="input-group-btn send-testi">
                                            <button class="btn btn-primary btn-block"><i class="fa fa-send"></i></button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                <?php endif; ?>

                <div class="panel">
                    <div class="panel-body">
                        <div class="testi-section list-group kat-list">
                            <?php while ($testi = mysqli_fetch_assoc($query_testi)): ?>
                                <div class="testi-item list-group-item">
                                    <div class="row">
                                        <div class="col-md-2 col-sm-4 text-center">
                                            <img alt="" src="assets/img/foto/<?= htmlspecialchars($testi['foto']) ?>" class="img-circle testi-autor-foto"> <br><br>
                                            
                                        </div>
                                        <div class="col-md-9 col-sm-8">
                                            <blockquote>
                                                <i class="fa fa-quote-left"></i>
                                                <p><?= htmlspecialchars($testi['pesan']) ?></p>
                                                
                                                <h4 class="testi-autor">- <?= htmlspecialchars($testi['nama']) ?></h4>
                                            </blockquote>
                                        </div>
                                    </div>
                                </div>
                            <?php endwhile; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
