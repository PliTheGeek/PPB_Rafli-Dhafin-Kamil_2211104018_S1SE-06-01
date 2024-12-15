@extends('layouts.app')

@section('title', 'Receipt')

@section('content')
    <h1>Receipt</h1>
    <p>Nama Penyetor: {{ $setorTarik->transaksi->nama_penyetor }}</p>
    <p>Kode Resi: {{ $setorTarik->transaksi->kode_resi }}</p>
    <p>Jenis: {{ $setorTarik->operation_type }}</p>
    <p>Jumlah : {{ $setorTarik->qty }} Kg</p>
    <p>Harga per Unit: Rp  {{ $setorTarik->harga }}</p>
    <p>Biaya Jasa Simpan Perbulan: Rp 1000</p>
    @if($setorTarik->operation_type == 'tarik')
        <!-- <p>Hari Dari Setor: {{ $days }}</p> -->
        <p>Tanggal Setor: {{ $setor->created_at }}</p>
        <p>Tanggal Tarik: {{ $setorTarik->created_at }}</p>
        <p>Terhitung Bulan ke -: {{ ceil($days / 30) }}</p>
        <p>Potensi Penghasilan : Rp {{ $setorTarik->qty * $setorTarik->harga }}</p>
        <p>Potensi Keuntungan Petani: Rp {{ $price_difference }}</p>
        <p><strong>Total Tagihan Biaya Jasa: Rp {{ $service_price }}</strong></p>

    @endif

@endsection