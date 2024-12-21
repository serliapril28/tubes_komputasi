@extends('pelanggan.layout.index')

@section('content')
    <div class="row mt-4 align-items-center">
        <div class="col-md-6">
            <div class="content-text">
                toko buku online adalah sebuah aplikasi yang menyediakan berbagai macam buku yang dapat anda beli dengan
                harga
                yang terjangkau dan kualitas yang terjamin. Kami menyediakan berbagai macam buku mulai dari buku pelajaran,
                novel,
                buku anak-anak, dan lain-lain. Kami juga menyediakan berbagai

            </div>
        </div>
    </div>
    <div class="d-flex justify-content-lg-between mt-5">
        <div class="d-flex align-items-center gap-4">
            <i class="fa fa-users fa-2x"></i>
            <p class="m-0 fs-5">+ 300 Pelanggan</p>
        </div>
        <div class="d-flex align-items-center gap-4">
            <i class="fas fa-home fa-2x"> </i>
            <p class="m-0 fs-5"> +500 Seller</p>
        </div>
        <div class="d-flex align-items-center gap-4">
            <i class="fa fa-book" aria-hidden="true"></i>
            <p class="m-0 fs-5">+ 300 Product</p>
        </div>
    </div>

    <h4 class="text-center mt-md-5 mb-md-2">Contact Us</h4>
    <hr class="mb-5">
    <div class="row  mb-md-5">
        <div class="col-md-5">
            <div class="bg-secondary" style="width: 100%; height:50vh; border-radius:10px;"></div>
        </div>
        <div class="col-md-7">
            <div class="card">
                <div class="card-header text-center">
                    <h4>Kritik dan saran</h4>
                </div>
                <div class="card-body">
                    <p class="p-0 mb-5 text-lg-center">Masukan kritik dan saran anda kepada aplikasi kami ini agar kami
                        dapat memberikan
                        apa yang menjadi kebutuhan anda dan kami dapat berkembang lebih baik lagi.
                    </p>


                    <!-- Success alert -->
                    @if (session('success'))
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            {{ session('success') }}
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    @endif

                    <!-- Feedback form -->
                    <form action="{{ route('admin.feedback') }}" method="POST">
                        @csrf
                        <div class="mb-3 row">
                            <label for="email" class="col-sm-2 col-form-label">Email</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="email" name="email"
                                    placeholder="Masukkan email Anda" required>
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="pesan" class="col-sm-2 col-form-label">Pesan</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" id="pesan" name="pesan" rows="5" placeholder="Masukkan Pesan Anda" required></textarea>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-primary mt-4 w-100">Kirim Pesan Anda</button>
                    </form>
                    <!-- Pesan sukses jika ada -->


                </div>
            </div>
        </div>
    </div>
@endsection
