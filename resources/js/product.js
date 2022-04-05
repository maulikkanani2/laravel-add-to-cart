$(document).ready(function() {
    function cartdetail(data) {
        var cart = ''
        if(data != ''){

            data.forEach(element => {
                var stringCut=''
                 if(element.name.length>20){
                    stringCut = element.name.slice( 0, 20)+'...';
                }
                else{
                    stringCut = element.name;

                }
                cart += '<a  class="dropdown-item" data-id="'+element.id+'"><div class = "media" ><img src = "'+ element.image +'" alt = "product" class = "img-size-50 mr-3 img-circle" ><div class = "media-body" ><h3 class = "dropdown-item-title" > '+stringCut+' <span id ="delete-product" data-id="'+element.id+'" class = "delete-product float-right text-sm text-danger" ><i class ="far fa-times-circle"></i></span ></h3><p class = "text-sm text-muted"> Quantity: '+element.quantity+'</p></div></div> </a> '
                    
            });
            cart += '<div class=""><button id="submit-order" class="submit btn btn-primary my-1 mx-auto d-flex" > Submit Order</button></div>'
        }
        else{
            cart += '<div class="p-2"><p>Your Cart is Empty.</p></div>'
        }
        return cart;
    }

    $(".delete-product").click(function(event) {
        // event.preventDefault();
        const id= $(this).attr('data-id');console.log(id,"id")
        $.ajax({
            type: 'delete',
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
                const detail = cartdetail(res.cartdetail);
                $('.cart-contend').html();
                $('.cart-contend').html(detail);
            }
            else{
                $("#succcess-messag").removeClass('alert-success');
                $("#succcess-messag").addClass('alert-danger');
                $("#succcess-messag").show(100)
                $("#succcess-messag p").html(res.message)
            }
        // }
        });
    });

    $('.dropdown-menu a').on('click', function(event) {
        event.stopPropagation();
    });

    $('#submit-order').on('click', function (){
        var ids =[];
        $('.cart-contend > .dropdown-item').each(function()  {
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
                $('.cart-count').html('0')
                const detail = cartdetail();
                $('.cart-contend').html();
                $('.cart-contend').html(detail);
            }
            else{
                $("#succcess-messag").removeClass('alert-success');
                $("#succcess-messag").addClass('alert-danger');
                $("#succcess-messag").show(100)
                $("#succcess-messag p").html(res.message)
            }
        // }
        });
        
    })


});