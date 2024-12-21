@extends('pelanggan.layout.index')

@section('content')
<div class="container">
    <h1>Your Favorite Items</h1>

    @if (session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

    <!-- Add Item Form -->


    <!-- Display Favorites -->
    @if($favorites->isNotEmpty())
        <ul class="list-group mt-4">
            @foreach ($favorites as $favorite)
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <!-- Assuming each favorite is related to a product, you can access product data -->
                    <div class="d-flex align-items-center">
                        <!-- Display product image -->
                        <img src="{{ asset('storage/product/' . $favorite->product->foto) }}" alt="{{ $favorite->product->nama_product }}" style="width: 50px; height: 50px; object-fit: cover; margin-right: 10px;">

                        <!-- Display product name -->
                        <span>{{ $favorite->product->nama_product }}</span>
                    </div>

                    <!-- Remove Favorite Form -->
                    <form action="{{ route('favorites.destroy', $favorite->id) }}" method="POST">
                        @csrf
                        @method('DELETE')
                        <button class="btn btn-danger btn-sm">Remove</button>
                    </form>
                </li>
            @endforeach
        </ul>
    @else
        <p>No favorite items found.</p>
    @endif
</div>
@endsection
