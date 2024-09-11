<div>
    @if ($prodcommands)
        <div class="card mt-2">
            <div class="card-header">
               <h3>Command Products</h3>
            </div>
            <div class="card-body">
                <div class="mt-4">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Product</th>
                                <th scope="col">Qte</th>
                                <th scope="col">Price</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($prodcommands as $key => $prod)
                                <tr wire:key="{{ $key }}">
                                    <td>{{ $key + 1 }}</td>
                                    <td>{{ $prod->product_name }}</td>
                                    <td>
                                        {{ $prod->quantity }}
                                    </td>
                                    <td>{{ $prod->price }} XAF</td>
                                </tr>
                            @endforeach
                        </tbody>
                        <tfooter>
                            <tr>
                                <td colspan="3" class="text-end">Total :</td>
                                <td colspan="">{{ $total }} XAF</td>
                            </tr>
                        </tfooter>
                    </table>
                </div>
            </div>
        </div>
    @endif
</div>

@assets
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="icons/bootstrap-icons.min.css" rel="stylesheet">
<script src="js/bootstrap.bundle.min.js" ></script>
<script src="js/jquery.min.js"></script>
@endassets
