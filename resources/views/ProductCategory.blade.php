@extends('layouts.main')

@section('main_header')
    Product Category
@endsection

@section('main_header')
    Product Category
@endsection

@section('title')
    Product Category
@endsection

@section('content')
    <div class="alert alert-success" id="succcess-messag" style="display: none">
        <p class="contend mb-0"></p>
    </div>
    <div class="row d-flex align-items-stretch">
        @foreach ($product as $item => $value)
            {{-- {{ dump($value) }} --}}
            <div class="col-12 col-sm-6 col-md-2 d-flex align-items-stretch">
                <div class="card bg-light w-100">
                    <div class="card-body pt-0">
                        <div class="row">
                            <a href="{{ url('product-detail/'.$value->id) }}">
                                <div class="text-center">
                                    <img src="{{ $value->image }}" alt=""
                                        class="img-fluid">
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="card-footer">
                        <a href="{{ url('product-detail/'.$value->id) }}">
                            <div class="text-center">
                                {{ $value->name }}
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        @endforeach
        {{-- @php exit(); @endphp --}}
    </div>
    <div class="card-footer">
        <nav aria-label="Contacts Page Navigation">
            <ul class="pagination justify-content-center m-0">
                {{ $product->links("pagination::bootstrap-4") }}
            </ul>
        </nav>
    </div>
@endsection
