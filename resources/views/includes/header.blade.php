<nav class="main-header navbar navbar-expand navbar-white navbar-light ml-0">
    <!-- Left navbar links -->
    <ul class="navbar-nav w-100">
        <li class="nav-item d-none d-sm-inline-block">
            <a href="{{ url('product-category') }}" class="nav-link">Home</a>
        </li>

        <li class="nav-item dropdown ml-auto">
            <a class="nav-link" href="javascript:void(0)" data-target="#modal-default" data-toggle="modal">
                <i class="far fa-bell"></i>
                <span class="badge badge-danger navbar-badge" id="notification-count">
                    @if (session('notification'))
                        {{ session('notification') }}
                    @else
                        0
                    @endif
                </span>
            </a>

        </li>

        <li class="nav-item dropdown">
            <a class="nav-link" data-toggle="dropdown" href="#">
                <i class="fas fa-cart-plus"></i>
                <span class="badge badge-danger navbar-badge cart-count">
                    @if (session('cartcount'))
                        {{ session('cartcount') }}
                    @else
                        0
                    @endif
                </span>
            </a>
            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right cart-contend">
                @if (session('cart') && session('cartcount') > 0)
                    @foreach (session('cart') as $item => $value)
                        <a class="dropdown-item" onclick="stopPropagation(this)" data-id="{{ $value['id'] }}">
                            <div class="media">
                                <img src="{{ $value['product']['image'] }}" alt="product" class="img-size-50 mr-3 img-circle">
                                <div class="media-body">
                                    <h3 class="dropdown-item-title">
                                        <?php echo strlen($value['product']['name']) > 20 ? substr_replace($value['product']['name'], '...', 20) : $value['product']['name']; ?>
                                        <span onclick="deleteProduct(this)" id="delete-product" style="cursor:pointer"
                                            data-id="{{ $value['id'] }}" class="float-right text-sm text-danger"><i
                                                class="far fa-times-circle"></i></span>
                                    </h3>
                                    <div class="d-flex">
                                        <p class="text-sm text-muted"> Quantity : {{ $value['quantity'] }}</p>
                                        <p class="text-sm text-muted pl-5"> Price : {{ $value['price'] }}</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    @endforeach
                    <hr />
                    <div>
                        @if (session('total'))
                            <h5 class="pl-3">Total : {{ session('total') }}</h5>
                        @else
                            <h5 class="pl-3">Total : 0</h5>
                        @endif
                        <button onclick="submitOrder()" class="submit btn btn-primary my-1 mx-auto d-flex"> Submit
                            Order</button>
                    </div>
                @else
                    <div class="p-2">
                        <p>Your Cart is Empty.</p>
                    </div>
                @endif

            </div>
        </li>
    </ul>
</nav>

<div class="modal fade show order-model" id="modal-default">
    <div class=" modal-dialog">
        <div class="modal-content ">
            <div class="modal-header">
                <h4 class="modal-title">Submit Order Detail</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div>
                    @if (session('notificationData'))
                        @foreach (session('notificationData') as $item => $value)
                            <div class="media">
                                <img src="{{ $value['product']['image'] }}" alt="product" class="img-size-50 mr-3 img-circle">
                                <div class="media-body">
                                    <h3 class="dropdown-item-title">
                                        <?php echo strlen($value['product']['name']) > 20 ? substr_replace($value['product']['name'], '...', 20) : $value['product']['name']; ?>
                                    </h3>
                                    <div class="d-flex">
                                        <p class="text-sm text-muted"> Quantity : {{ $value['quantity'] }}</p>
                                        <p class="text-sm text-muted pl-5"> Price : {{ $value['price'] }}</p>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                        @else
                        <p>Not found any submited order.</p>
                        @endif
                </div>
            </div>
        </div>
    </div>
</div>
