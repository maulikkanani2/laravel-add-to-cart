<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>@yield('title')</title>
    <link rel="stylesheet" href="{{ asset('frontend/plugins/fontawesome-free/css/all.min.css') }}">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet"
        href="{{ asset('frontend/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/plugins/icheck-bootstrap/icheck-bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/plugins/jqvmap/jqvmap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/dist/css/adminlte.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/plugins/overlayScrollbars/css/OverlayScrollbars.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/plugins/daterangepicker/daterangepicker.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/plugins/summernote/summernote-bs4.css') }}">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">
        @include('includes.header')
        <div class="content-wrapper ml-0">
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0 text-dark">@yield('main_header')</h1>
                        </div>
                    </div>
                </div>
            </div>

            <section class="content">
                <div class="container-fluid">
                    @yield('content')
                </div>
            </section>
        </div>
        @include('includes.footer')
    </div>

    <script src="{{ asset('frontend/plugins/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('frontend/plugins/jquery-ui/jquery-ui.min.js') }}"></script>
    <script>
        $.widget.bridge('uibutton', $.ui.button)
    </script>



    {{-- <script type="text/javascript" src="{{URL::asset('js/product.js')}}"></script> --}}
    <script src="{{ asset('frontend/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('frontend/plugins/chart.js/Chart.min.js') }}"></script>
    <script src="{{ asset('frontend/plugins/sparklines/sparkline.js') }}"></script>
    <script src="{{ asset('frontend/plugins/jqvmap/jquery.vmap.min.js') }}"></script>
    <script src="{{ asset('frontend/plugins/jqvmap/maps/jquery.vmap.usa.js') }}"></script>
    <script src="{{ asset('frontend/plugins/jquery-knob/jquery.knob.min.js') }}"></script>
    <script src="{{ asset('frontend/plugins/moment/moment.min.js') }}"></script>
    <script src="{{ asset('frontend/plugins/daterangepicker/daterangepicker.js') }}"></script>
    <script src="{{ asset('frontend/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js') }}"></script>
    <script src="{{ asset('frontend/plugins/summernote/summernote-bs4.min.js') }}"></script>
    <script src="{{ asset('frontend/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js') }}"></script>
    <script src="{{ asset('frontend/dist/js/adminlte.js') }}"></script>
    <script src="{{ asset('frontend/dist/js/pages/dashboard.js') }}"></script>
    <script src="{{ asset('frontend/dist/js/demo.js') }}"></script>
    @yield('scripts')

    <script>
        getData();
        function getData(){
            $.ajax({
                type: 'get',
                url: "{{ route('add-cart') }}",
            }).done(function(res) {
                console.log(res)
            });
        }
        function deleteProduct(data) {
            const id = $(data).data('id');
            $.ajax({
                type: 'post',
                url: "{{ route('remove-to-cart') }}",
                data: {
                    _token: '{{ csrf_token() }}',
                    id: id,
                }
            }).done(function(res) {
                if (res.success) {
                    $("#succcess-messag").removeClass('alert-danger');
                    $("#succcess-messag").addClass('alert-success');
                    $("#succcess-messag").show(100)
                    $("#succcess-messag p").html(res.message)
                    $('.cart-count').html(res.cart)
                    // $('.dropdown-menu').show()
                    const detail = cartdetail(res.cartdetail, res.total);
                    $('.cart-contend').html();
                    $('.cart-contend').html(detail);
                } else {
                    $("#succcess-messag").removeClass('alert-success');
                    $("#succcess-messag").addClass('alert-danger');
                    $("#succcess-messag").show(100)
                    $("#succcess-messag p").html(res.message)
                }
                // }
            });
        }

        function cartdetail(data, total) {
            var cart = ''
            if (data && data != '') {
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
                        stringCut +
                        ' <span onclick="deleteProduct(this)" style="cursor:pointer" id ="delete-product" data-id="' +
                        element.id +
                        '" class = "float-right text-sm text-danger" ><i class ="far fa-times-circle"></i></span ></h3><div class="d-flex" ><p class = "text-sm text-muted"> Quantity: ' +
                        element.quantity + '</p><p class = "text-sm text-muted pl-5"> Price: ' + element.price +
                        '</p></div></div></div> </a> '
                });
                cart += '<hr/><div class=""><h5 class="pl-3">Total: ' + total +
                    '</h5><button onclick="submitOrder()" class="submit btn btn-primary my-1 mx-auto d-flex" > Submit Order</button></div>'
            } else {
                cart += '<div class="p-2"><p>Your Cart is Empty.</p></div>'
            }
            return cart;
        }

        function submitOrder() {
            var ids = [];
            $('.cart-contend > .dropdown-item').each(function() {
                ids.push($(this).attr('data-id'))
            })

            $.ajax({
                type: 'post',
                url: "{{ route('submitorder') }}",
                data: {
                    _token: '{{ csrf_token() }}',
                    ids: ids,
                }
            }).done(function(res) {
                if (res.success) {
                    $("#succcess-messag").removeClass('alert-danger');
                    $("#succcess-messag").addClass('alert-success');
                    $("#succcess-messag").show(100)
                    $("#succcess-messag p").html(res.message)
                    $("#notification-count").html(res.notification)
                    $('.cart-count').html('0')
                    const detail = cartdetail();
                    $('.cart-contend').html();
                    $('.cart-contend').html(detail);
                    $('.order-model .modal-body').html('');
                    var orderDetail = ''
                    orderDetail += '<div>'
                        if (res.notificationData) {
                            res.notificationData.forEach(el => {
                                var stringCut = ''
                                if (el.product.name.length > 20) {
                                    stringCut = el.product.name.slice(0, 20) + '...';
                                } else {
                                    stringCut = el.product.name;

                                }
                                orderDetail += '<div class="media"><img src="' + el.product.image +
                                    '" alt="product" class="img-size-50 mr-3 img-circle"><div class="media-body"><h3 class="dropdown-item-title">' +
                                    stringCut +
                                    '</h3><div class="d-flex"><p class="text-sm text-muted"> Quantity : ' + el
                                    .quantity + '</p><p class="text-sm text-muted pl-5"> Price : ' + el.price +'</p></div></div></div>';
                            })
                             orderDetail += '</div>'
                    }
                    else {
                        orderDetail += "<p>Not found any submited order.</p>"
                    }
                    $('.order-model .modal-body').html(orderDetail);
                } else {
                    $("#succcess-messag").removeClass('alert-success');
                    $("#succcess-messag").addClass('alert-danger');
                    $("#succcess-messag").show(100)
                    $("#succcess-messag p").html(res.message)
                }
                // }
            });

        }

        $(document).ready(function() {
            $('.dropdown-menu a').on('click', function(event) {
                event.stopPropagation();
            });
        });
    </script>

</body>

</html>
