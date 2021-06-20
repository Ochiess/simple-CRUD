<?php 
$conn = mysqli_connect("localhost", "root", "", "db_company");

function query($query) 
{
    global $conn;
    $result = mysqli_query($conn, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function tambah($data)
{
    global $conn;
    $nik = $data["nik"];
    $nama = $data["nama"];
    $alamat = $data["alamat"];
    $no_hp = $data["no_hp"];
    $gender = $data["gender"];
    $jabatan = $data["jabatan"];
    $umur = $data["umur"];

    $query = "INSERT INTO tb_karyawan VALUES('$nik', '$nama', '$alamat', '$no_hp', '$gender', '$jabatan', '$umur')";

    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);
}

function edit($data)
{
    global $conn;
    $nik = $data["nik"];
    $nama = $data["nama"];
    $alamat = $data["alamat"];
    $no_hp = $data["no_hp"];
    $gender = $data["gender"];
    $jabatan = $data["jabatan"];
    $umur = $data["umur"];

    $query = "UPDATE tb_karyawan SET  nama='$nama', alamat='$alamat', no_hp='$no_hp', gender='$gender', jabatan='$jabatan' WHERE nik=$nik";

    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);
}

function hapus($nik)
{
    global $conn;
    mysqli_query($conn, "DELETE FROM tb_karyawan WHERE nik = $nik");
    return mysqli_affected_rows($conn);
}

?>