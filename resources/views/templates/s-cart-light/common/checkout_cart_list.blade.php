<div class="container-fluid">
    <div class="row">
        <aside class="col-lg-12">
            <div class="card">
                <div class="table-responsive">
                    <table class="table table-borderless table-shopping-cart">
                        <thead class="text-muted">
                        <tr class="text-uppercase">
                            <th scope="col">Sản phẩm</th>
                            <th scope="col" width="120">Số lượng</th>
                            <th scope="col" width="120">Giá</th>
                        </tr>
                        </thead>
                        <tbody>
                        @php
                        $cartSubTotal = 0;
                        @endphp
                        @foreach($cartItem as $item)
                            @php
                                $n = (isset($n)?$n:0);
                                $n++;
                                // Check product in cart
                                $product = $modelProduct->start()->getDetail($item->id, null, $item->storeId);
                                if(!$product) {
                                    continue;
                                }
                                $cartSubTotal += $item->subtotal;
                                // End check product in cart
                            @endphp
                            <tr>
                                <td>
                                    <figure class="itemside align-items-center">
                                        <div class="aside">
                                            <img src="{{sc_file($product->getImage())}}" class="img-sm" alt="{{ $product->name }}">
                                        </div>
                                        <figcaption class="info">
                                            <a href="{{$product->getUrl() }}" class="title text-dark" data-abc="true">
                                                {{ $product->name }}
                                            </a>
                                            <p class="text-muted small">
                                                {{-- Process attributes --}}
                                                @if ($item->options->count())
                                                    @foreach ($item->options as $groupAtt => $att)
                                                        <b>{{ $attributesGroup[$groupAtt] ?? '' }}</b>: {!! sc_render_option_price($att) !!}
                                                    @endforeach
                                                @endif
                                                {{-- //end Process attributes --}}
                                            </p>
                                        </figcaption>
                                    </figure>
                                </td>
                                <td>
                                    <input style="width: 150px; margin: 0 auto" type="number" data-id="{{ $item->id }}"
                                           data-rowid="{{$item->rowId}}" data-store_id="{{$product->store_id}}" onChange="updateCart($(this));"
                                           class="item-qty form-control" name="qty-{{$item->id}}" value="{{$item->qty}}">
                                    <span class="text-danger item-qty-{{$item->id}}" style="display: none;"></span>
                                    @if (session('arrErrorQty')[$product->id] ?? 0)
                                        <span class="help-block">
                                          <br>{{ sc_language_render('cart.minimum_value', ['value' => session('arrErrorQty')[$product->id]]) }}
                                      </span>
                                    @endif
                                </td>
                                <td>
                                    <div class="price-wrap">
                                        <var class="price">{{sc_currency_render($item->subtotal)}}</var>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </aside>
    </div>
</div>

@push('scripts')
    <style>
        @import url('https://fonts.googleapis.com/css?family=Open+Sans&display=swap');

        body {
            background-color: #eeeeee;
            font-family: 'Open Sans', serif;
            font-size: 14px
        }
        .card-body {
            -ms-flex: 1 1 auto;
            flex: 1 1 auto;
            padding: 1.40rem
        }

        .img-sm {
            width: 80px;
            height: 80px
        }

        .itemside .info {
            padding-left: 15px;
            padding-right: 7px
        }

        .table-shopping-cart .price-wrap {
            line-height: 1.2
        }

        .table-shopping-cart .price {
            font-weight: bold;
            margin-right: 5px;
            display: block
        }

        .text-muted {
            color: #969696 !important
        }

        a {
            text-decoration: none !important
        }

        .card {
            position: relative;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-direction: column;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: 1px solid rgba(0, 0, 0, .125);
            border-radius: 0px
        }

        .itemside {
            position: relative;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            width: 100%
        }

        .dlist-align {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex
        }

        [class*="dlist-"] {
            margin-bottom: 5px
        }

        .coupon {
            border-radius: 1px
        }

        .price {
            font-weight: 600;
            color: #212529
        }

        .btn.btn-out {
            outline: 1px solid #fff;
            outline-offset: -5px
        }

        .btn-main {
            border-radius: 2px;
            text-transform: capitalize;
            font-size: 15px;
            padding: 10px 19px;
            cursor: pointer;
            color: #fff;
            width: 100%
        }

        .btn-light {
            color: #ffffff;
            background-color: #F44336;
            border-color: #f8f9fa;
            font-size: 12px
        }

        .btn-light:hover {
            color: #ffffff;
            background-color: #F44336;
            border-color: #F44336
        }

        .btn-apply {
            font-size: 11px
        }
        .table-shopping-cart tr th {color: #000000;}
    </style>
@endpush
@push('scripts')
<script type="text/javascript">
    function updateCart(obj){
        let new_qty = obj.val();
        let storeId = obj.data('store_id');
        let rowid = obj.data('rowid');
        let id = obj.data('id');
        $.ajax({
            url: '{{ sc_route('cart.update') }}',
            type: 'POST',
            dataType: 'json',
            async: false,
            cache: false,
            data: {
                id: id,
                rowId: rowid,
                new_qty: new_qty,
                storeId: storeId,
                _token:'{{ csrf_token() }}'},
            success: function(data){
                error= parseInt(data.error);
                if(error ===0)
                {
                    window.location.replace(location.href);
                }else{
                    $('.item-qty-'+id).css('display','block').html(data.msg);
                }

                }
        });
    }

    function buttonQty(obj, action){
        var parent = obj.parent();
        var input = parent.find(".item-qty");
        if(action === 'reduce'){
            input.val(parseInt(input.val()) - 1);
        }else{
            input.val(parseInt(input.val()) + 1);
        }
        updateCart(input)
    }
</script>
@endpush