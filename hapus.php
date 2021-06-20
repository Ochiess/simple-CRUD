<?php

require 'koneksi.php';

$nik = $_GET["nik"];

if(hapus($nik) > 0 ) {
    echo"
    <script>
        alert('dihapus');
        document.location.href = 'index.php';
    </script>
";
} else {
    echo"
    <script>
        alert('gagal dihapus');
        document.location.href = 'index.php';
    </script>
";
}

?>
