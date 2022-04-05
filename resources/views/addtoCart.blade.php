@extends('layouts.main')

@section('main_header')
    Add to Cart
@endsection

@section('main_header')
    Add to Cart
@endsection

@section('title')
    Add to Cart
@endsection


@section('content')
    <div class="alert alert-success" id="succcess-messag" style="display: none">
        <p class="contend mb-0"></p>
    </div>
    <div class="card card-solid">
        <div class="card-body">
            <div class="row">
                <div class="col-12 col-sm-6">
                    <div class="col-12">
                        <img src="{{ $product['image'] }}" class="product-image" alt="Product Image">
                    </div>
                </div>
                <div class="col-12 col-sm-6">
                    <h3 class="my-3">{{ $product['name'] }}</h3>
                    <p>{!! isset($product['description']) && $product['description'] != '' ? $product['description'] : 'No Description' !!}
                    </p>
                    <hr>
                    <div class="bg-gray py-2 px-3 mt-4">
                        <h2 class="mb-0">
                            Price
                        </h2>
                        <h4 class="mt-0">
                            <small>
                                {{ isset($product['regular_price']) && $product['regular_price'] != '' ? $product['regular_price'] : '-' }}
                            </small>
                        </h4>
                    </div>

                    <div class="mt-4">
                        <button class="btn btn-primary btn-lg btn-flat " data-id="{{ $product['id'] }}" id="add-to-cart">
                            <i class="fas fa-cart-plus fa-lg mr-2"></i>
                            Add to Cart
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('scripts')
    <script>
        function cartdetail(data,total) {console.log(data,total)
            var cart = ''
            if (data != '') {
                data.forEach(element => {
                    var stringCut = ''
                    if (element.product.name.length > 20) {
                        stringCut = element.product.name.slice(0, 20) + '...';
                    } else {
                        stringCut = element.product.name;

                    }
                    cart += '<a  class="dropdown-item" data-id="' + element.id +
                        '"><div class = "media" ><img src = "' + element.product.image +
                        '" alt = "product" class = "img-size-50 mr-3 img-circle" ><div class = "media-body" ><h3 class = "dropdown-item-title" > ' +
                        stringCut + ' <span style="cursor:pointer" onclick="deleteProduct(this)" id ="delete-product" data-id="' + element.id +
                        '" class = "delete-product float-right text-sm text-danger" ><i class ="far fa-times-circle"></i></span ></h3><div class="d-flex" ><p class = "text-sm text-muted"> Quantity: '+element.quantity+'</p><p class = "text-sm text-muted pl-5"> Price: '+element.price+'</p></div></div></div> </a> '
                });
                cart +=
                    '<hr/><div class=""><h5 class="pl-3">Total: '+total+'</h5><button onclick="submitOrder()" class="submit btn btn-primary my-1 mx-auto d-flex" > Submit Order</button></div>'
            } else {
                cart += '<div class="p-2"><p>Your Cart is Empty.</p></div>'
            }
            return cart;
        }
        $(document).ready(function() {
            $("#add-to-cart").click(function() {
                const id = $("#add-to-cart").attr('data-id');
                $.ajax({
                    type: 'post',
                    url: "{{ route('add-to-cart') }}",
                    data: {
                        _token: '{{ csrf_token() }}',
                        id: id,
                        quantity: 1,
                    }
                }).done(function(res) {
                    if (res.success) {
                        $("#succcess-messag").removeClass('alert-danger');
                        $("#succcess-messag").addClass('alert-success');
                        $("#succcess-messag").show(100)
                        $("#succcess-messag p").html(res.message)
                        $('.cart-count').html(res.cart)
                        const detail = cartdetail(res.cartdetail,res.total);
                        $('.cart-contend').html();
                        $('.cart-contend').html(detail);
                    } else {
                        $("#succcess-messag").removeClass('alert-success');
                        $("#succcess-messag").addClass('alert-danger');
                        $("#succcess-messag").show(100)
                        $("#succcess-messag p").html(res.message)
                    }
                })
            });

        });
    </script>
@endsection
